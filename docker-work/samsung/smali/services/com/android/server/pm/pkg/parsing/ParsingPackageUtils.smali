.class public Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;
.super Ljava/lang/Object;
.source "ParsingPackageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;,
        Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$ParseFlags;
    }
.end annotation


# static fields
.field public static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field public static final ASPECT_RATIO_NOT_SET:F = -1.0f

.field public static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_JAR:Z = false

.field public static final DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field public static final MAX_NUM_COMPONENTS:I = 0x7530

.field public static final MAX_NUM_COMPONENTS_ERR_MSG:Ljava/lang/String; = "Total number of components has exceeded the maximum number: 30000"

.field public static final MAX_PERMISSION_NAME_LENGTH:I = 0x200

.field public static final METADATA_ACTIVITY_LAUNCH_MODE:Ljava/lang/String; = "android.activity.launch_mode"

.field public static final METADATA_ACTIVITY_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "android.activity_window_layout_affinity"

.field public static final METADATA_CAN_DISPLAY_ON_REMOTE_DEVICES:Ljava/lang/String; = "android.can_display_on_remote_devices"

.field public static final METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field public static final METADATA_SUPPORTS_SIZE_CHANGES:Ljava/lang/String; = "android.supports_size_changes"

.field public static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field public static final PARSE_APK_IN_APEX:I = 0x200

.field public static final PARSE_CHATTY:I = -0x80000000

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x20

.field public static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final PARSE_ENFORCE_CODE:I = 0x40

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x8

.field public static final PARSE_FRAMEWORK_RES_SPLITS:I = 0x100

.field public static final PARSE_IGNORE_OVERLAY_REQUIRED_SYSTEM_PROPERTY:I = 0x80

.field public static final PARSE_IGNORE_PROCESSES:I = 0x2

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x10

.field public static final PARSE_MUST_BE_APK:I = 0x1

.field public static final RIGID_PARSER:Z = false

.field public static final SDK_CODENAMES:[Ljava/lang/String;

.field public static final SDK_VERSION:I

.field public static final TAG:Ljava/lang/String; = "PackageParsing"

.field public static final TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field public static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final TAG_ATTRIBUTION:Ljava/lang/String; = "attribution"

.field public static final TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field public static final TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field public static final TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field public static final TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field public static final TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field public static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field public static final TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field public static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field public static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field public static final TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field public static final TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field public static final TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field public static final TAG_QUERIES:Ljava/lang/String; = "queries"

.field public static final TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field public static final TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field public static final TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field public static final TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field public static final TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field public static final TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field public static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field public static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field public static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field public static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field public static final TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field public static sCompatibilityModeEnabled:Z

.field public static sUseRoundIcon:Z


# instance fields
.field public mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mOnlyCoreApps:Z

.field public mSeparateProcesses:[Ljava/lang/String;

.field public mSplitPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    .line 227
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 229
    sput-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    const/4 v0, 0x0

    .line 230
    sput-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            "Landroid/util/DisplayMetrics;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;",
            ")V"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mOnlyCoreApps:Z

    .line 358
    iput-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    .line 359
    iput-object p3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 360
    iput-object p4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    .line 361
    iput-object p5, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    return-void
.end method

.method public static aFloat(FILandroid/content/res/TypedArray;)F
    .registers 3

    .line 3291
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    return p0
.end method

.method public static aFloat(ILandroid/content/res/TypedArray;)F
    .registers 3

    const/4 v0, 0x0

    .line 3295
    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    return p0
.end method

.method public static adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 7

    .line 3065
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p0

    .line 3066
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_23

    .line 3068
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 3069
    invoke-static {v3, v1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setResizeMode(Lcom/android/server/pm/pkg/component/ParsedActivity;I)V

    .line 3071
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v4

    const v5, -0x400001

    and-int/2addr v4, v5

    .line 3070
    invoke-static {v3, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExactFlags(Lcom/android/server/pm/pkg/component/ParsedComponent;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_23
    return-void
.end method

.method public static anInt(IILandroid/content/res/TypedArray;)I
    .registers 3

    .line 3299
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static anInt(ILandroid/content/res/TypedArray;)I
    .registers 3

    const/4 v0, 0x0

    .line 3307
    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static anInteger(IILandroid/content/res/TypedArray;)I
    .registers 3

    .line 3303
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p0

    return p0
.end method

.method public static bool(ZILandroid/content/res/TypedArray;)Z
    .registers 3

    .line 3287
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method public static convertCompatPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 6

    .line 3028
    sget-object v0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_2d

    .line 3029
    sget-object v2, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    aget-object v2, v2, v1

    .line 3030
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v4

    if-lt v3, v4, :cond_15

    goto :goto_2d

    .line 3033
    :cond_15
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 3034
    invoke-virtual {v2}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2d
    :goto_2d
    return-void
.end method

.method public static exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1697
    :cond_4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v1, 0x0

    .line 1698
    :goto_e
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1699
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_22
    return-object v0
.end method

.method public static generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 2756
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":app_details"

    .line 2757
    invoke-static {v0, v0, v1, p0}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2759
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2760
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2763
    :cond_15
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2767
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getUiOptions()I

    move-result v3

    .line 2768
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isBaseHardwareAccelerated()Z

    move-result p1

    .line 2766
    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3145
    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const-wide/32 v7, 0x40000

    const-string v1, "collectCertificates"

    .line 3147
    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3151
    :try_start_a
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    .line 3153
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v4

    .line 3155
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v6

    move-object v1, p0

    move v3, p2

    .line 3149
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 3157
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3158
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_7f

    .line 3184
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 3161
    :cond_2a
    :try_start_2a
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/SigningDetails;

    .line 3162
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework/framework-res.apk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3164
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 3165
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3166
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v10

    .line 3167
    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    if-nez v2, :cond_7b

    const/4 v2, 0x0

    move v11, v2

    .line 3168
    :goto_56
    array-length v2, v10

    if-ge v11, v2, :cond_7b

    .line 3169
    aget-object v2, v10, v11

    .line 3173
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v4

    .line 3175
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v6

    move-object v1, p0

    move v3, p2

    move-object v5, v9

    .line 3169
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 3177
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 3178
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_74
    .catchall {:try_start_2a .. :try_end_74} :catchall_7f

    .line 3184
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_78
    add-int/lit8 v11, v11, 0x1

    goto :goto_56

    :cond_7b
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :catchall_7f
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3185
    throw v0
.end method

.method public static getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/content/pm/SigningDetails;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3192
    invoke-static {p5}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result p5

    if-eqz p3, :cond_7

    const/4 p5, 0x2

    :cond_7
    if-eqz p2, :cond_e

    .line 3201
    invoke-static {p0, p1, p5}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    goto :goto_12

    .line 3204
    :cond_e
    invoke-static {p0, p1, p5}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 3207
    :goto_12
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 3208
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 3214
    :cond_1d
    sget-object p3, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p4, p3, :cond_22

    return-object p2

    .line 3217
    :cond_22
    invoke-virtual {p4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p3

    .line 3218
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/SigningDetails;

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    .line 3217
    invoke-static {p3, p2}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p2

    if-nez p2, :cond_4e

    const/16 p2, -0x68

    .line 3219
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has mismatched certificates"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 3223
    :cond_4e
    invoke-interface {p0, p4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static hasDomainURLs(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z
    .registers 10

    .line 2779
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p0

    .line 2780
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_52

    .line 2782
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2783
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v3

    .line 2784
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_1b
    if-ge v5, v4, :cond_4f

    .line 2786
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    const-string v7, "android.intent.action.VIEW"

    .line 2787
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_30

    goto :goto_4a

    .line 2788
    :cond_30
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_4a

    :cond_37
    const-string/jumbo v7, "http"

    .line 2789
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4d

    const-string/jumbo v7, "https"

    .line 2790
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    goto :goto_4d

    :cond_4a
    :goto_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_4d
    :goto_4d
    const/4 p0, 0x1

    return p0

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_52
    return v1
.end method

.method public static hasSamsungOverlayComponent(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 3407
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

    .line 3408
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v0
.end method

.method public static hasTooManyComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z
    .registers 3

    .line 875
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    const/16 p0, 0x7530

    if-le v0, p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public static nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 3

    .line 3321
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 2

    .line 3325
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2711
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2712
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2714
    :cond_6
    :goto_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6d

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    .line 2716
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_6d

    :cond_16
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    goto :goto_6

    .line 2721
    :cond_1a
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "additional-certificate"

    .line 2722
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2723
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 2726
    :try_start_2d
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 2729
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 2730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_4c
    .catchall {:try_start_2d .. :try_end_4c} :catchall_68

    .line 2741
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_50
    :try_start_50
    const-string v4, ":"

    const-string v5, ""

    .line 2737
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2738
    const-class v4, Ljava/lang/String;

    invoke-static {v4, v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_68

    .line 2741
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6

    :catchall_68
    move-exception p0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2742
    throw p0

    .line 2746
    :cond_6d
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3015
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 3017
    :try_start_7
    invoke-static {p3, p3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 3019
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 3021
    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 3023
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_18
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3024
    throw p0
.end method

.method public static parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1260
    invoke-static {p2, p3, p0}, Lcom/android/server/pm/pkg/component/ParsedAttributionUtils;->parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1262
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 1263
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1265
    :cond_f
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedAttribution;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseDefault(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;

    new-instance v5, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$1;

    invoke-direct {v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$1;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;-><init>(Z[Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    const/4 p3, 0x0

    .line 325
    invoke-virtual {v6, p0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 326
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 327
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 330
    :cond_1f
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    if-eqz p4, :cond_40

    const/4 p2, 0x0

    .line 333
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 334
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_37

    .line 335
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 337
    :cond_37
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/SigningDetails;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 341
    :cond_40
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Ljava/lang/Object;

    .line 343
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseDefaultOneTime(Ljava/io/File;ILjava/util/List;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 289
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    .line 290
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseDefault(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 1709
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestExtensionSdk:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 1711
    :try_start_8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v1, 0x1

    .line 1712
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_79

    .line 1714
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, -0x6c

    if-gez p2, :cond_1f

    const-string p2, "<extension-sdk> must specify an sdkVersion >= 0"

    .line 1718
    invoke-interface {p0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_1f
    if-gez v0, :cond_28

    const-string p2, "<extension-sdk> must specify minExtensionVersion >= 0"

    .line 1723
    invoke-interface {p0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1729
    :cond_28
    :try_start_28
    invoke-static {p2}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v1

    if-ge v1, v0, :cond_56

    const/16 p3, -0xc

    .line 1731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " extension version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " which exceeds device version "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_55} :catch_5e

    return-object p0

    .line 1741
    :cond_56
    invoke-virtual {p3, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1742
    invoke-interface {p0, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1737
    :catch_5e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Specified sdkVersion "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :catchall_79
    move-exception p0

    .line 1714
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1715
    throw p0
.end method

.method public static parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1540
    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 1542
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    .line 1544
    :goto_a
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_68

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1a

    .line 1546
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_68

    :cond_1a
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1e

    goto :goto_a

    .line 1551
    :cond_1e
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "uses-feature"

    .line 1552
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1553
    invoke-static {p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v3

    .line 1556
    iget v5, v3, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/FeatureInfo;->flags:I

    .line 1557
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_a

    .line 1559
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <feature-group>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageParsing"

    .line 1559
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_68
    if-eqz v2, :cond_7a

    .line 1567
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1568
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1571
    :cond_7a
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1572
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .registers 5

    .line 1517
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1518
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 1522
    :try_start_c
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v1, 0x3

    .line 1523
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 1524
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    .line 1525
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    :cond_24
    const/4 p1, 0x2

    .line 1528
    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 1529
    iget p1, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr p1, v2

    iput p1, v0, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_34

    .line 1533
    :cond_30
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_34
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1534
    throw p1
.end method

.method public static parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2989
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentationUtils;->parseInstrumentation(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 2991
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 2992
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2994
    :cond_11
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1121
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 1125
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1126
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1127
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1128
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    :goto_20
    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 1129
    :cond_22
    :goto_22
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const-string v14, "PackageParsing"

    const/4 v15, 0x1

    if-eq v13, v15, :cond_1b5

    const/4 v9, 0x3

    if-ne v13, v9, :cond_34

    .line 1130
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_1b5

    :cond_34
    if-ne v13, v9, :cond_3d

    .line 1132
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-ne v9, v11, :cond_22

    goto :goto_20

    .line 1138
    :cond_3d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1139
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v13, 0x0

    sparse-switch v10, :sswitch_data_29c

    :goto_4c
    const/4 v9, -0x1

    goto :goto_71

    :sswitch_4e
    const-string/jumbo v10, "public-key"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_58

    goto :goto_4c

    :cond_58
    const/4 v9, 0x2

    goto :goto_71

    :sswitch_5a
    const-string/jumbo v10, "key-set"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_64

    goto :goto_4c

    :cond_64
    move v9, v15

    goto :goto_71

    :sswitch_66
    const-string/jumbo v10, "upgrade-key-set"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    goto :goto_4c

    :cond_70
    move v9, v13

    :goto_71
    const-string v10, "Improperly nested \'key-set\' tag at "

    packed-switch v9, :pswitch_data_2aa

    const-string v9, "<key-sets>"

    .line 1214
    invoke-static {v9, v1, v3, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1216
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1217
    invoke-interface {v0, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_87
    if-nez v12, :cond_a1

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1158
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1161
    :cond_a1
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1164
    :try_start_a7
    invoke-static {v13, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v10

    .line 1166
    invoke-static {v15, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_dc

    .line 1168
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_dc

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'public-key\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must define a public-key value on first use at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_d8
    .catchall {:try_start_a7 .. :try_end_d8} :catchall_15c

    .line 1198
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_dc
    if-eqz v13, :cond_14f

    .line 1174
    :try_start_de
    invoke-static {v13}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v13

    if-nez v13, :cond_114

    .line 1176
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " key-set "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1176
    invoke-static {v14, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1181
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_10f
    .catchall {:try_start_de .. :try_end_10f} :catchall_15c

    .line 1198
    :goto_10f
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_22

    .line 1184
    :cond_114
    :try_start_114
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_14c

    .line 1185
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/PublicKey;

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_127

    goto :goto_14c

    .line 1190
    :cond_127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of \'public-key\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " conflicts with previously defined value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1190
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_148
    .catchall {:try_start_114 .. :try_end_148} :catchall_15c

    .line 1198
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1188
    :cond_14c
    :goto_14c
    :try_start_14c
    invoke-virtual {v5, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    :cond_14f
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1196
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_15b
    .catchall {:try_start_14c .. :try_end_15b} :catchall_15c

    goto :goto_10f

    :catchall_15c
    move-exception v0

    .line 1198
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1199
    throw v0

    :pswitch_161
    if-eqz v12, :cond_17b

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1142
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1145
    :cond_17b
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1147
    :try_start_181
    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v12

    .line 1149
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v7, v12, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11
    :try_end_191
    .catchall {:try_start_181 .. :try_end_191} :catchall_196

    .line 1153
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_22

    :catchall_196
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1154
    throw v0

    .line 1202
    :pswitch_19b
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1205
    :try_start_1a1
    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 1207
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1208
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1ab
    .catchall {:try_start_1a1 .. :try_end_1ab} :catchall_1b0

    .line 1210
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_22

    :catchall_1b0
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1211
    throw v0

    .line 1222
    :cond_1b5
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1223
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1224
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    const-string v4, "Package"

    if-eqz v3, :cond_1e2

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AndroidManifest.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1229
    :cond_1e2
    invoke-virtual {v7}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1ea
    :goto_1ea
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1230
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1231
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    const-string v11, " AndroidManifest.xml \'key-set\' "

    if-nez v10, :cond_228

    .line 1232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ea

    .line 1236
    :cond_228
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24c

    .line 1237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ea

    .line 1243
    :cond_24c
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_256
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1ea

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1244
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/PublicKey;

    invoke-interface {v1, v9, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_256

    .line 1247
    :cond_26c
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getKeySetMapping()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_282

    .line 1248
    invoke-interface {v1, v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1254
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1250
    :cond_282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AndroidManifest.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_29c
    .sparse-switch
        -0x519cd6bd -> :sswitch_66
        -0x30ac780c -> :sswitch_5a
        0x717268fb -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_2aa
    .packed-switch 0x0
        :pswitch_19b
        :pswitch_161
        :pswitch_87
    .end packed-switch
.end method

.method public static parseLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2485
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2489
    :try_start_7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 2492
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 2493
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2494
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2497
    :cond_1e
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_26

    .line 2499
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2500
    throw p0
.end method

.method public static parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/server/pm/pkg/component/ParsedComponent;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 3081
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 3085
    :try_start_7
    invoke-static {v0, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 3084
    invoke-static {v1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 3087
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires an android:name attribute"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_ef

    .line 3130
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 3090
    :cond_2a
    :try_start_2a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    if-eqz p1, :cond_37

    .line 3091
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    goto :goto_38

    :cond_37
    move-object v7, v1

    :goto_38
    const/4 p1, 0x2

    .line 3092
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 3093
    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_4e

    .line 3094
    new-instance v1, Landroid/content/pm/PackageManager$Property;

    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    const/4 v5, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ce

    :cond_4e
    const/4 p1, 0x1

    .line 3096
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_d6

    .line 3098
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6b

    .line 3099
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 3100
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3101
    :cond_64
    new-instance p0, Landroid/content/pm/PackageManager$Property;

    invoke-direct {p0, v3, v1, v6, v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    goto :goto_ce

    :cond_6b
    const/16 v5, 0x12

    if-ne v4, v5, :cond_7a

    .line 3103
    new-instance v1, Landroid/content/pm/PackageManager$Property;

    iget p0, v2, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_76

    move v0, p1

    :cond_76
    invoke-direct {v1, v3, v0, v6, v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    :cond_7a
    const/16 p1, 0x10

    if-lt v4, p1, :cond_8c

    const/16 p1, 0x1f

    if-gt v4, p1, :cond_8c

    .line 3106
    new-instance v1, Landroid/content/pm/PackageManager$Property;

    iget v4, v2, Landroid/util/TypedValue;->data:I

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    :cond_8c
    const/4 p1, 0x4

    if-ne v4, p1, :cond_99

    .line 3108
    new-instance v1, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    invoke-direct {v1, v3, p0, v6, v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    :cond_99
    const-string p1, "PackageParsing"

    .line 3111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " at "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3111
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    :goto_ce
    invoke-interface {p5, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_d2
    .catchall {:try_start_2a .. :try_end_d2} :catchall_ef

    .line 3130
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 3124
    :cond_d6
    :try_start_d6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires an android:value or android:resource attribute"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_eb
    .catchall {:try_start_d6 .. :try_end_eb} :catchall_ef

    .line 3130
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_ef
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3131
    throw p0
.end method

.method public static parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2999
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 3001
    :try_start_7
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p3

    .line 3004
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3005
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 3007
    :cond_18
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 3009
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_20
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3010
    throw p0
.end method

.method public static parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2877
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 2879
    :try_start_7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2880
    invoke-static {v1, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    if-nez v0, :cond_1c

    const-string p1, "<overlay> does not specify a target package"

    .line 2883
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_c5

    .line 2932
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_1c
    if-ltz v2, :cond_bb

    const/16 v3, 0x270f

    if-le v2, v3, :cond_24

    goto/16 :goto_bb

    :cond_24
    const/4 v3, 0x5

    .line 2889
    :try_start_25
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    .line 2891
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2893
    invoke-static {v3, v4}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 2894
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping target and overlay pair "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2895
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": overlay ignored due to required system property: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with value: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PackageParsing"

    .line 2898
    invoke-static {p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_6a
    .catchall {:try_start_25 .. :try_end_6a} :catchall_c5

    .line 2932
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2903
    :cond_6e
    :try_start_6e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->hasSamsungOverlayComponent(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 2905
    sget-object v4, Landroid/content/om/SamsungThemeConstants;->overlayTargetMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 2906
    sget-object v4, Landroid/content/om/SamsungThemeConstants;->overlayTargetMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2910
    :cond_88
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2911
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2912
    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 p3, 0x3

    .line 2914
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2913
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 p3, 0x2

    .line 2916
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2915
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 p3, 0x4

    .line 2918
    invoke-static {v1, p3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p3

    .line 2917
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2919
    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSamsungThemeOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2910
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_b7
    .catchall {:try_start_6e .. :try_end_b7} :catchall_c5

    .line 2932
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_bb
    :goto_bb
    :try_start_bb
    const-string p1, "<overlay> priority must be between 0 and 9999"

    .line 2885
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_c1
    .catchall {:try_start_bb .. :try_end_c1} :catchall_c5

    .line 2932
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_c5
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2933
    throw p0
.end method

.method public static parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1282
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->parsePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1284
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 1285
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1287
    :cond_11
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1271
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->parsePermissionGroup(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1273
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 1274
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1276
    :cond_11
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1293
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->parsePermissionTree(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1295
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 1296
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1298
    :cond_11
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p0

    .line 2685
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseProcesses([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 2687
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_15

    .line 2688
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2691
    :cond_15
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2697
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2699
    :try_start_6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isProfileableByShell()Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_17

    .line 2700
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p3

    if-eqz p3, :cond_15

    goto :goto_17

    :cond_15
    move p3, v0

    goto :goto_18

    :cond_17
    :goto_17
    move p3, v1

    .line 2699
    :goto_18
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2701
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isProfileable()Z

    move-result p3

    if-eqz p3, :cond_29

    .line 2702
    invoke-static {v1, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p3

    if-eqz p3, :cond_29

    move v0, v1

    .line 2701
    :cond_29
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_35

    .line 2704
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_35
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2705
    throw p0
.end method

.method public static parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2938
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 2942
    :try_start_7
    invoke-static {p3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 2944
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2946
    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 2948
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_18
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2949
    throw p0
.end method

.method public static parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1775
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 1777
    :cond_4
    :goto_4
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18c

    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    .line 1779
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_18c

    :cond_14
    const/4 v3, 0x2

    if-eq v1, v3, :cond_18

    goto :goto_4

    .line 1783
    :cond_18
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "intent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_117

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v10, p0

    .line 1784
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 1787
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1788
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1791
    :cond_3c
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 1796
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v4

    .line 1797
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v5

    .line 1798
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v6

    .line 1799
    invoke-virtual {v1}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-nez v5, :cond_65

    if-nez v6, :cond_65

    if-nez v4, :cond_65

    const-string/jumbo p1, "intent tags must contain either an action or data."

    .line 1801
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_65
    if-le v4, v2, :cond_6f

    const-string/jumbo p1, "intent tag may have at most one action."

    .line 1804
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_6f
    if-le v6, v2, :cond_79

    const-string/jumbo p1, "intent tag may have at most one data type."

    .line 1807
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_79
    if-le v5, v2, :cond_83

    const-string/jumbo p1, "intent tag may have at most one data scheme."

    .line 1810
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_83
    if-le v7, v2, :cond_8d

    const-string/jumbo p1, "intent tag may have at most one data host."

    .line 1813
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1815
    :cond_8d
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1816
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v9

    move v10, v3

    :goto_97
    if-ge v10, v9, :cond_a3

    .line 1817
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v10, v10, 0x1

    goto :goto_97

    :cond_a3
    const/4 v9, 0x0

    if-ne v7, v2, :cond_ad

    .line 1820
    invoke-virtual {v1}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    goto :goto_ae

    :cond_ad
    move-object v7, v9

    :goto_ae
    const-string v10, "/*"

    if-ne v5, v2, :cond_cc

    .line 1823
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 1824
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1825
    invoke-virtual {v5, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1826
    invoke-virtual {v5, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1827
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    goto :goto_cd

    :cond_cc
    move-object v5, v9

    :goto_cd
    if-ne v6, v2, :cond_106

    .line 1830
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    .line 1833
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ea

    .line 1834
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_ea
    move-object v9, v6

    if-nez v5, :cond_106

    .line 1837
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "content"

    .line 1838
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "*"

    .line 1839
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1840
    invoke-virtual {v5, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1841
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1844
    :cond_106
    invoke-virtual {v8, v5, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-ne v4, v2, :cond_112

    .line 1846
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1848
    :cond_112
    invoke-interface {p1, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_4

    .line 1849
    :cond_117
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_144

    .line 1850
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestQueriesPackage:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1852
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 1854
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13b

    const-string p1, "Package name is missing from package tag."

    .line 1855
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1857
    :cond_13b
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_4

    .line 1858
    :cond_144
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "provider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1859
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestQueriesProvider:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1862
    :try_start_157
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 1864
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16d

    const/16 p1, -0x6c

    const-string p2, "Authority missing from provider tag."

    .line 1865
    invoke-interface {p0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_169
    .catchall {:try_start_157 .. :try_end_169} :catchall_187

    .line 1875
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 1870
    :cond_16d
    :try_start_16d
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    :goto_174
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_182

    .line 1872
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_181
    .catchall {:try_start_16d .. :try_end_181} :catchall_187

    goto :goto_174

    .line 1875
    :cond_182
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_4

    :catchall_187
    move-exception p0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1876
    throw p0

    .line 1879
    :cond_18c
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-eqz p0, :cond_4a

    .line 1748
    sget-object p0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {p3, p4, p0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p3, 0x0

    .line 1750
    :try_start_c
    invoke-virtual {p0, p3, p3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3d

    .line 1755
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1756
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    :goto_1a
    if-ge p3, v1, :cond_39

    .line 1758
    div-int/lit8 v3, p3, 0x2

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, p3, 0x1

    .line 1760
    invoke-virtual {p4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 p3, p3, 0x2

    goto :goto_1a

    .line 1762
    :cond_39
    invoke-interface {p2, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_41

    :cond_3d
    const/4 p3, 0x0

    .line 1764
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_45

    .line 1767
    :goto_41
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4a

    :catchall_45
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1768
    throw p1

    .line 1770
    :cond_4a
    :goto_4a
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseSdkLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2411
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSdkLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2414
    :try_start_7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 2416
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eqz p2, :cond_64

    if-gez v0, :cond_16

    goto :goto_64

    .line 2424
    :cond_16
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    const/16 p0, -0x6b

    const-string/jumbo p2, "sharedUserId not allowed in SDK library"

    .line 2425
    invoke-interface {p3, p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_85

    .line 2438
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2429
    :cond_29
    :try_start_29
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 2430
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple SDKs for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2431
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2430
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_85

    .line 2438
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2434
    :cond_4c
    :try_start_4c
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2435
    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2436
    invoke-interface {p0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2434
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_60
    .catchall {:try_start_4c .. :try_end_60} :catchall_85

    .line 2438
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2422
    :cond_64
    :goto_64
    :try_start_64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sdk-library declaration name: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " version: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_81
    .catchall {:try_start_64 .. :try_end_81} :catchall_85

    .line 2438
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_85
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2439
    throw p0
.end method

.method public static parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1088
    invoke-static {v0, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 1089
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1090
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1093
    :cond_10
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4b

    .line 1094
    invoke-static {p0, v1, v3, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 1096
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_4b

    const/16 p1, -0x6b

    .line 1097
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1097
    invoke-interface {p0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1104
    :cond_4b
    invoke-static {}, Lcom/android/server/pm/SharedUidMigration;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_5e

    const/16 v2, 0xd

    .line 1105
    invoke-static {v0, v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v2

    if-eqz v2, :cond_5e

    .line 1106
    sget v4, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v2, v4, :cond_5e

    move v0, v3

    .line 1110
    :cond_5e
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 1111
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v0, 0x3

    .line 1112
    invoke-static {v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 1109
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseStaticLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2446
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2450
    :try_start_7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 2452
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x2

    .line 2454
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz v0, :cond_6d

    if-gez v1, :cond_1b

    goto :goto_6d

    .line 2462
    :cond_1b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    const/16 p0, -0x6b

    const-string/jumbo p2, "sharedUserId not allowed in static shared library"

    .line 2463
    invoke-interface {p3, p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_8e

    .line 2477
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2467
    :cond_2e
    :try_start_2e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 2468
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple static-shared libs for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2468
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_4d
    .catchall {:try_start_2e .. :try_end_4d} :catchall_8e

    .line 2477
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2472
    :cond_51
    :try_start_51
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2474
    invoke-static {p2, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    .line 2473
    invoke-interface {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2475
    invoke-interface {p0, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2472
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_69
    .catchall {:try_start_51 .. :try_end_69} :catchall_8e

    .line 2477
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2460
    :cond_6d
    :goto_6d
    :try_start_6d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad static-library declaration name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " version: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_8a
    .catchall {:try_start_6d .. :try_end_8a} :catchall_8e

    .line 2477
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_8e
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2478
    throw p0
.end method

.method public static parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2954
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x6

    const/4 v0, 0x0

    .line 2956
    :try_start_8
    invoke-static {v0, p3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result p3

    const/4 v1, 0x7

    .line 2958
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v1

    const/16 v2, 0x8

    .line 2960
    invoke-static {v0, v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    const/4 v3, 0x1

    .line 2967
    invoke-static {v3, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2966
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v4, 0x2

    .line 2969
    invoke-static {v3, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2968
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v4, 0x3

    .line 2971
    invoke-static {v3, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2970
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v4, 0x5

    .line 2973
    invoke-static {v3, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2972
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v4, 0x4

    .line 2975
    invoke-static {v3, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2974
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2977
    invoke-static {v3, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v0

    .line 2976
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2978
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2979
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2980
    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2965
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_5c
    .catchall {:try_start_8 .. :try_end_5c} :catchall_60

    .line 2982
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_60
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2983
    throw p0
.end method

.method public static parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1473
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1474
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 1476
    :try_start_c
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    const/4 v1, 0x1

    .line 1479
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    const/4 v2, 0x2

    .line 1482
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1485
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v1, v3

    iput v1, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_25
    const/4 v1, 0x3

    .line 1487
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    const/4 v1, 0x4

    .line 1490
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_38

    .line 1493
    iget p3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr p3, v2

    iput p3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1495
    :cond_38
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1496
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_43

    .line 1498
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_43
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1499
    throw p0
.end method

.method public static parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1504
    invoke-static {p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object p2

    .line 1505
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1507
    iget-object p3, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez p3, :cond_17

    .line 1508
    new-instance p3, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {p3}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1509
    iget p2, p2, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput p2, p3, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1510
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1513
    :cond_17
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2622
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 2626
    :try_start_7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    .line 2627
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz p3, :cond_2d

    .line 2630
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    if-eqz v0, :cond_20

    .line 2633
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2634
    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_2d

    .line 2637
    :cond_20
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2638
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2643
    :cond_2d
    :goto_2d
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_35

    .line 2645
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_35
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2646
    throw p0
.end method

.method public static parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2652
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesNativeLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 2656
    :try_start_7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    .line 2658
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz p3, :cond_29

    if-eqz v0, :cond_1c

    .line 2664
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2665
    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_29

    .line 2668
    :cond_1c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2669
    invoke-interface {p1, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2674
    :cond_29
    :goto_29
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_31

    .line 2676
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_31
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2677
    throw p0
.end method

.method public static parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1578
    sget v4, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    if-lez v4, :cond_140

    move/from16 v5, p4

    and-int/lit16 v5, v5, 0x200

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_16

    move v5, v7

    goto :goto_17

    :cond_16
    move v5, v6

    .line 1580
    :goto_17
    sget-object v8, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v2, v3, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const v9, 0x7fffffff

    .line 1589
    :try_start_20
    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x3

    if-eqz v10, :cond_41

    .line 1591
    iget v13, v10, Landroid/util/TypedValue;->type:I

    if-ne v13, v12, :cond_3d

    iget-object v13, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v13, :cond_3d

    .line 1592
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1593
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/2addr v13, v7

    move v14, v13

    move-object v13, v10

    move v10, v7

    goto :goto_44

    .line 1596
    :cond_3d
    iget v10, v10, Landroid/util/TypedValue;->data:I

    move v14, v7

    goto :goto_43

    :cond_41
    move v14, v6

    move v10, v7

    :goto_43
    move-object v13, v11

    .line 1601
    :goto_44
    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_64

    .line 1603
    iget v6, v15, Landroid/util/TypedValue;->type:I

    if-ne v6, v12, :cond_5f

    iget-object v6, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5f

    .line 1604
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v14, :cond_5b

    move-object v13, v6

    move-object v14, v13

    goto :goto_5d

    :cond_5b
    move-object v14, v13

    move-object v13, v6

    :goto_5d
    const/4 v6, 0x0

    goto :goto_66

    .line 1610
    :cond_5f
    iget v6, v15, Landroid/util/TypedValue;->data:I

    move-object v14, v13

    move-object v13, v11

    goto :goto_66

    :cond_64
    move v6, v10

    move-object v14, v13

    :goto_66
    if-eqz v5, :cond_71

    const/4 v15, 0x2

    .line 1618
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_71

    .line 1621
    iget v9, v15, Landroid/util/TypedValue;->data:I

    .line 1625
    :cond_71
    sget-object v15, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 1626
    invoke-static {v6, v13, v15, v0, v5}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 1628
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v13

    if-eqz v13, :cond_85

    .line 1629
    invoke-interface {v0, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_81
    .catchall {:try_start_20 .. :try_end_81} :catchall_13b

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1632
    :cond_85
    :try_start_85
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1635
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13, v6}, Landroid/content/pm/parsing/result/ParseInput;->enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v13

    .line 1636
    invoke-interface {v13}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v16

    if-eqz v16, :cond_a5

    .line 1637
    invoke-interface {v0, v13}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_a1
    .catchall {:try_start_85 .. :try_end_a1} :catchall_13b

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1641
    :cond_a5
    :try_start_a5
    invoke-static {v10, v14, v4, v15, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    .line 1642
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v13

    if-eqz v13, :cond_b7

    .line 1643
    invoke-interface {v0, v10}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_b3
    .catchall {:try_start_a5 .. :try_end_b3} :catchall_13b

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1646
    :cond_b7
    :try_start_b7
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1648
    invoke-interface {v1, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v10

    .line 1649
    invoke-interface {v10, v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    if-eqz v5, :cond_e9

    .line 1652
    invoke-static {v9, v4, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMaxSdkVersion(IILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 1653
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 1654
    invoke-interface {v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_d8
    .catchall {:try_start_b7 .. :try_end_d8} :catchall_13b

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1656
    :cond_dc
    :try_start_dc
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1657
    invoke-interface {v1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1661
    :cond_e9
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 1663
    :cond_ed
    :goto_ed
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_130

    if-ne v5, v12, :cond_fb

    .line 1664
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_130

    :cond_fb
    if-eq v5, v12, :cond_ed

    const/4 v6, 0x4

    if-ne v5, v6, :cond_101

    goto :goto_ed

    .line 1670
    :cond_101
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "extension-sdk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11c

    if-nez v11, :cond_114

    .line 1672
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    .line 1674
    :cond_114
    invoke-static {v0, v2, v3, v11}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 1675
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_122

    :cond_11c
    const-string v5, "<uses-sdk>"

    .line 1677
    invoke-static {v5, v1, v3, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 1680
    :goto_122
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_ed

    .line 1681
    invoke-interface {v0, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_12c
    .catchall {:try_start_dc .. :try_end_12c} :catchall_13b

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1684
    :cond_130
    :try_start_130
    invoke-static {v11}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_137
    .catchall {:try_start_130 .. :try_end_137} :catchall_13b

    .line 1686
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_140

    :catchall_13b
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1687
    throw v0

    .line 1689
    :cond_140
    :goto_140
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 2507
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdkLibrary:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 2510
    :try_start_9
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    .line 2512
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/4 v5, 0x1

    .line 2514
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_8f

    if-ltz v4, :cond_8f

    if-nez v6, :cond_1f

    goto :goto_8f

    .line 2525
    :cond_1f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v7

    .line 2526
    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 2527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Depending on multiple versions of SDK library "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_b8

    .line 2561
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2531
    :cond_42
    :try_start_42
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const-string v7, ":"

    .line 2534
    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2536
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    const-string v6, "debug.pm.uses_sdk_library_default_cert_digest"

    .line 2538
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_5c
    .catchall {:try_start_42 .. :try_end_5c} :catchall_b8

    .line 2542
    :try_start_5c
    invoke-static {v6, v2}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_5f} :catch_60
    .catchall {:try_start_5c .. :try_end_5f} :catchall_b8

    :cond_5f
    move-object v0, v6

    .line 2548
    :catch_60
    :try_start_60
    invoke-static {p0, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 2549
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_72

    .line 2550
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_b8

    .line 2561
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2552
    :cond_72
    :try_start_72
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 2554
    array-length p3, p2

    add-int/2addr p3, v5

    new-array p3, p3, [Ljava/lang/String;

    .line 2555
    aput-object v0, p3, v2

    .line 2556
    array-length v0, p2

    invoke-static {p2, v2, p3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v4

    .line 2559
    invoke-interface {p1, v3, v4, v5, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_8b
    .catchall {:try_start_72 .. :try_end_8b} :catchall_b8

    .line 2561
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2520
    :cond_8f
    :goto_8f
    :try_start_8f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad uses-sdk-library declaration name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " certDigest"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_b4
    .catchall {:try_start_8f .. :try_end_b4} :catchall_b8

    .line 2561
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_b8
    move-exception p0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2562
    throw p0
.end method

.method public static parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2569
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 2572
    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 2574
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v5, 0x2

    .line 2576
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_8a

    if-ltz v3, :cond_8a

    if-nez v5, :cond_1d

    goto :goto_8a

    .line 2587
    :cond_1d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    .line 2588
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 2589
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Depending on multiple versions of static library "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_b3

    .line 2615
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2593
    :cond_40
    :try_start_40
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v6, ":"

    const-string v7, ""

    .line 2596
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2599
    sget-object v6, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2600
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v7

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_73

    .line 2601
    invoke-static {p0, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 2602
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_6c

    .line 2603
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_68
    .catchall {:try_start_40 .. :try_end_68} :catchall_b3

    .line 2615
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2605
    :cond_6c
    :try_start_6c
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, [Ljava/lang/String;

    .line 2608
    :cond_73
    array-length p2, v6

    add-int/2addr p2, v4

    new-array p2, p2, [Ljava/lang/String;

    .line 2609
    aput-object v5, p2, v1

    .line 2610
    array-length p3, v6

    invoke-static {v6, v1, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v3, v3

    .line 2613
    invoke-interface {p1, v2, v3, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_86
    .catchall {:try_start_6c .. :try_end_86} :catchall_b3

    .line 2615
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 2582
    :cond_8a
    :goto_8a
    :try_start_8a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad uses-static-library declaration name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " certDigest"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_af
    .catchall {:try_start_8a .. :try_end_af} :catchall_b3

    .line 2615
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_b3
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2616
    throw p0
.end method

.method public static readConfigUseRoundIcon(Landroid/content/res/Resources;)V
    .registers 15

    const v0, 0x11101f4

    if-eqz p0, :cond_c

    .line 3239
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    return-void

    .line 3245
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-string v1, "android"

    const-wide/16 v2, 0x0

    .line 3247
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 3245
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_43

    .line 3251
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3254
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v8, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3263
    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    .line 3264
    invoke-virtual {v1}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    const/4 v13, 0x0

    .line 3254
    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object p0

    .line 3267
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    return-void

    :catch_43
    move-exception p0

    .line 3249
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .line 3363
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    return-object v1

    .line 3368
    :cond_9
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v0, :cond_3a

    .line 3370
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3371
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v2, :cond_20

    .line 3373
    invoke-virtual {v3, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 3377
    :cond_20
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8, v7}, Landroid/util/ArraySet;-><init>(I)V

    move v9, v4

    :goto_26
    if-ge v9, v7, :cond_34

    .line 3379
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/security/PublicKey;

    .line 3380
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 3383
    :cond_34
    invoke-virtual {v3, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_3a
    return-object v3
.end method

.method public static resId(ILandroid/content/res/TypedArray;)I
    .registers 3

    const/4 v0, 0x0

    .line 3312
    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .registers 1

    .line 3231
    sput-boolean p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    return-void
.end method

.method public static setMaxAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 8

    .line 2805
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_d

    const v0, 0x3fee147b    # 1.86f

    goto :goto_e

    :cond_d
    move v0, v1

    .line 2807
    :goto_e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getMaxAspectRatio()F

    move-result v2

    cmpl-float v1, v2, v1

    const-string v3, "android.max_aspect"

    if-eqz v1, :cond_1a

    move v0, v2

    goto :goto_2a

    .line 2812
    :cond_1a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 2813
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2814
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 2818
    :cond_2a
    :goto_2a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p0

    .line 2819
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v1, :cond_58

    .line 2821
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2823
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_46

    goto :goto_55

    .line 2832
    :cond_46
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    .line 2833
    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 2835
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v6

    invoke-static {v4, v6, v5}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setMaxAspectRatio(Lcom/android/server/pm/pkg/component/ParsedActivity;IF)V

    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_58
    return-void
.end method

.method public static string(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 2

    .line 3316
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_7

    .line 3334
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 3338
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3339
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3341
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3342
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3343
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_31

    .line 3345
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 3349
    :cond_31
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 3350
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_16

    .line 3352
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_47
    return-void
.end method


# virtual methods
.method public final convertSplitPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 10

    .line 3040
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_4b

    .line 3042
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 3043
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    .line 3044
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v5

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v6

    if-ge v5, v6, :cond_48

    .line 3045
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_48

    .line 3048
    :cond_2b
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v3

    move v5, v1

    .line 3049
    :goto_30
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_48

    .line 3050
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3051
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 3052
    invoke-interface {p1, v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4b
    return-void
.end method

.method public final parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/split/SplitAssetLoader;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/split/SplitAssetLoader;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 524
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "/mnt/expand/"

    .line 527
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    const/16 v0, 0x2f

    const/16 v2, 0xc

    .line 528
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 529
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1c

    :cond_1b
    move-object v7, v1

    .line 536
    :goto_1c
    :try_start_1c
    invoke-interface {p4}, Lcom/android/server/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v8
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_20} :catch_15a

    .line 541
    invoke-virtual {v8, p2}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3e

    const/16 p0, -0x65

    .line 543
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed adding asset path: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_3e
    :try_start_3e
    const-string v2, "AndroidManifest.xml"

    .line 547
    invoke-virtual {v8, v0, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_44} :catch_141

    .line 549
    :try_start_44
    new-instance v4, Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v4, v8, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v9

    move v6, p5

    .line 551
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 553
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_8b

    .line 554
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " (at "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 554
    invoke-interface {p1, p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_87
    .catchall {:try_start_44 .. :try_end_87} :catchall_135

    .line 608
    :try_start_87
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_141

    return-object p0

    .line 559
    :cond_8b
    :try_start_8b
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 560
    invoke-virtual {v8}, Landroid/content/res/AssetManager;->containsAllocatedTable()Z

    move-result p3

    if-eqz p3, :cond_b6

    const-string p3, "Targeting R+ (version 30 and above) requires the resources.arsc of installed APKs to be stored uncompressed and aligned on a 4-byte boundary"

    const-wide/32 v0, 0x7e97bf3

    .line 561
    invoke-interface {p1, p3, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p3

    .line 566
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_b6

    const/16 p0, -0x7c

    .line 568
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    .line 567
    invoke-interface {p1, p0, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_b0
    .catchall {:try_start_8b .. :try_end_b0} :catchall_135

    if-eqz v9, :cond_b5

    .line 608
    :try_start_b2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_141

    :cond_b5
    return-object p0

    .line 572
    :cond_b6
    :try_start_b6
    invoke-interface {p4}, Lcom/android/server/pm/split/SplitAssetLoader;->getBaseApkAssets()Landroid/content/res/ApkAssets;

    move-result-object p3
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_135

    const/4 p4, 0x0

    .line 575
    :try_start_bb
    invoke-virtual {p3}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result p3
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_bf} :catch_c0
    .catchall {:try_start_bb .. :try_end_bf} :catchall_135

    goto :goto_c1

    :catch_c0
    move p3, p4

    :goto_c1
    if-eqz p3, :cond_101

    .line 581
    :try_start_c3
    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object p3

    .line 582
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, p4

    :goto_cc
    if-ge v1, v0, :cond_101

    .line 584
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    invoke-virtual {v8, v2}, Landroid/content/res/AssetManager;->getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_fe

    .line 586
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_fe

    .line 587
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fe

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 588
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_e8

    :cond_fe
    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    .line 594
    :cond_101
    invoke-interface {p0, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    and-int/lit8 p3, p5, 0x20

    if-eqz p3, :cond_126

    .line 598
    invoke-static {p1, p0, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p3

    .line 599
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p4

    if-eqz p4, :cond_11c

    .line 600
    invoke-interface {p1, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_116
    .catchall {:try_start_c3 .. :try_end_116} :catchall_135

    if-eqz v9, :cond_11b

    .line 608
    :try_start_118
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11b} :catch_141

    :cond_11b
    return-object p0

    .line 602
    :cond_11c
    :try_start_11c
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/SigningDetails;

    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_12b

    .line 604
    :cond_126
    sget-object p3, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 607
    :goto_12b
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_12f
    .catchall {:try_start_11c .. :try_end_12f} :catchall_135

    if-eqz v9, :cond_134

    .line 608
    :try_start_131
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_141

    :cond_134
    return-object p0

    :catchall_135
    move-exception p0

    if-eqz v9, :cond_140

    .line 547
    :try_start_138
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_13b
    .catchall {:try_start_138 .. :try_end_13b} :catchall_13c

    goto :goto_140

    :catchall_13c
    move-exception p3

    :try_start_13d
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_140
    :goto_140
    throw p0
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_141} :catch_141

    :catch_141
    move-exception p0

    const/16 p3, -0x66

    .line 609
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to read manifest from "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :catch_15a
    move-exception p0

    .line 538
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_165

    const/4 p2, -0x2

    goto :goto_167

    :cond_165
    const/16 p2, -0x64

    .line 539
    :goto_167
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 538
    invoke-interface {p1, p2, p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public final parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v6, p5

    .line 661
    invoke-static {p1, v6}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 662
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 663
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 666
    :cond_12
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 667
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 668
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 670
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    const/16 v2, -0x6a

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected base APK, but found split "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 677
    :cond_3f
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v5, p4

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/4 v1, 0x0

    :try_start_48
    const-string v2, "coreApp"

    const/4 v3, 0x0

    .line 679
    invoke-interface {v6, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    move-object v1, p0

    .line 681
    iget-object v7, v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v13

    invoke-interface/range {v7 .. v12}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, v8

    move-object v4, v13

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 684
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 685
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_6d
    .catchall {:try_start_48 .. :try_end_6d} :catchall_7b

    if-eqz v2, :cond_73

    .line 691
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .line 689
    :cond_73
    :try_start_73
    invoke-interface {p1, v8}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_7b

    .line 691
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_7b
    move-exception v0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 692
    throw v0
.end method

.method public final parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1034
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_1d2

    goto/16 :goto_165

    :sswitch_d
    const-string v0, "compatible-screens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_165

    :cond_17
    const/16 v1, 0x18

    goto/16 :goto_165

    :sswitch_1b
    const-string/jumbo v0, "uses-feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto/16 :goto_165

    :cond_26
    const/16 v1, 0x17

    goto/16 :goto_165

    :sswitch_2a
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto/16 :goto_165

    :cond_35
    const/16 v1, 0x16

    goto/16 :goto_165

    :sswitch_39
    const-string v0, "feature-group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto/16 :goto_165

    :cond_43
    const/16 v1, 0x15

    goto/16 :goto_165

    :sswitch_47
    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto/16 :goto_165

    :cond_52
    const/16 v1, 0x14

    goto/16 :goto_165

    :sswitch_56
    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto/16 :goto_165

    :cond_61
    const/16 v1, 0x13

    goto/16 :goto_165

    :sswitch_65
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    goto/16 :goto_165

    :cond_70
    const/16 v1, 0x12

    goto/16 :goto_165

    :sswitch_74
    const-string/jumbo v0, "queries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7f

    goto/16 :goto_165

    :cond_7f
    const/16 v1, 0x11

    goto/16 :goto_165

    :sswitch_83
    const-string v0, "adopt-permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    goto/16 :goto_165

    :cond_8d
    const/16 v1, 0x10

    goto/16 :goto_165

    :sswitch_91
    const-string/jumbo v0, "uses-permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9c

    goto/16 :goto_165

    :cond_9c
    const/16 v1, 0xf

    goto/16 :goto_165

    :sswitch_a0
    const-string/jumbo v0, "instrumentation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ab

    goto/16 :goto_165

    :cond_ab
    const/16 v1, 0xe

    goto/16 :goto_165

    :sswitch_af
    const-string/jumbo v0, "key-sets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ba

    goto/16 :goto_165

    :cond_ba
    const/16 v1, 0xd

    goto/16 :goto_165

    :sswitch_be
    const-string/jumbo v0, "supports-input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c9

    goto/16 :goto_165

    :cond_c9
    const/16 v1, 0xc

    goto/16 :goto_165

    :sswitch_cd
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d8

    goto/16 :goto_165

    :cond_d8
    const/16 v1, 0xb

    goto/16 :goto_165

    :sswitch_dc
    const-string v0, "eat-comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    goto/16 :goto_165

    :cond_e6
    const/16 v1, 0xa

    goto/16 :goto_165

    :sswitch_ea
    const-string/jumbo v0, "permission-group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f5

    goto/16 :goto_165

    :cond_f5
    const/16 v1, 0x9

    goto/16 :goto_165

    :sswitch_f9
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_104

    goto/16 :goto_165

    :cond_104
    const/16 v1, 0x8

    goto/16 :goto_165

    :sswitch_108
    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_111

    goto :goto_165

    :cond_111
    const/4 v1, 0x7

    goto :goto_165

    :sswitch_113
    const-string/jumbo v0, "permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11d

    goto :goto_165

    :cond_11d
    const/4 v1, 0x6

    goto :goto_165

    :sswitch_11f
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_128

    goto :goto_165

    :cond_128
    const/4 v1, 0x5

    goto :goto_165

    :sswitch_12a
    const-string/jumbo v0, "restrict-update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_134

    goto :goto_165

    :cond_134
    const/4 v1, 0x4

    goto :goto_165

    :sswitch_136
    const-string/jumbo v0, "overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_140

    goto :goto_165

    :cond_140
    const/4 v1, 0x3

    goto :goto_165

    :sswitch_142
    const-string/jumbo v0, "original-package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14c

    goto :goto_165

    :cond_14c
    const/4 v1, 0x2

    goto :goto_165

    :sswitch_14e
    const-string/jumbo v0, "permission-tree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_158

    goto :goto_165

    :cond_158
    const/4 v1, 0x1

    goto :goto_165

    :sswitch_15a
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_164

    goto :goto_165

    :cond_164
    const/4 v1, 0x0

    :goto_165
    packed-switch v1, :pswitch_data_238

    const-string p0, "<manifest>"

    .line 1082
    invoke-static {p0, p3, p5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1055
    :pswitch_16f
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1057
    :pswitch_174
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1063
    :pswitch_179
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1061
    :pswitch_17e
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1080
    :pswitch_183
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1069
    :pswitch_188
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1051
    :pswitch_18d
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1065
    :pswitch_192
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1038
    :pswitch_197
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1075
    :pswitch_19c
    invoke-static {p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1076
    invoke-interface {p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1043
    :pswitch_1a4
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1059
    :pswitch_1a9
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1045
    :pswitch_1ae
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1041
    :pswitch_1b3
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1078
    :pswitch_1b8
    invoke-static {p6, p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1036
    :pswitch_1bd
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1067
    :pswitch_1c2
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1047
    :pswitch_1c7
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1053
    :pswitch_1cc
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_1d2
    .sparse-switch
        -0x69b7c34b -> :sswitch_15a
        -0x6366e724 -> :sswitch_14e
        -0x420dbfb6 -> :sswitch_142
        -0x410bbbb0 -> :sswitch_136
        -0x3b806306 -> :sswitch_12a
        -0x3a5d850a -> :sswitch_11f
        -0x1eda3a31 -> :sswitch_113
        -0x12786f81 -> :sswitch_108
        -0xfe5a947 -> :sswitch_f9
        -0xa2d06ff -> :sswitch_ea
        -0x7b47f16 -> :sswitch_dc
        0x71978d4 -> :sswitch_cd
        0x14d5f341 -> :sswitch_be
        0x1b1d76ff -> :sswitch_af
        0x20752f6e -> :sswitch_a0
        0x23c12e70 -> :sswitch_91
        0x25af09e7 -> :sswitch_83
        0x270bd766 -> :sswitch_74
        0x3573e73e -> :sswitch_65
        0x501aeeb1 -> :sswitch_56
        0x55ccf562 -> :sswitch_47
        0x6446f4e8 -> :sswitch_39
        0x65ae49fd -> :sswitch_2a
        0x6adbbdf5 -> :sswitch_1b
        0x6c5ff78e -> :sswitch_d
    .end sparse-switch

    :pswitch_data_238
    .packed-switch 0x0
        :pswitch_1cc
        :pswitch_1c7
        :pswitch_1c2
        :pswitch_1bd
        :pswitch_1b8
        :pswitch_1b3
        :pswitch_1ae
        :pswitch_1b3
        :pswitch_1a9
        :pswitch_1a4
        :pswitch_19c
        :pswitch_19c
        :pswitch_19c
        :pswitch_197
        :pswitch_192
        :pswitch_18d
        :pswitch_188
        :pswitch_183
        :pswitch_17e
        :pswitch_18d
        :pswitch_179
        :pswitch_174
        :pswitch_18d
        :pswitch_16f
        :pswitch_19c
    .end packed-switch
.end method

.method public final parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    .line 924
    invoke-static/range {p1 .. p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 925
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_11

    return-object v1

    :cond_11
    const/4 v1, -0x1

    const/4 v9, 0x4

    .line 929
    invoke-static {v1, v9, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v1

    invoke-interface {v8, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v10, 0x1

    .line 931
    invoke-static {v10, v2, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    and-int/lit8 v1, p6, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    move v1, v10

    goto :goto_2d

    :cond_2c
    move v1, v2

    .line 934
    :goto_2d
    invoke-interface {v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 938
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    const/4 v12, 0x0

    move v13, v2

    move-object v14, v12

    .line 940
    :cond_37
    :goto_37
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v10, :cond_b1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_46

    .line 942
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v11, :cond_b1

    :cond_46
    const/4 v1, 0x2

    if-eq v0, v1, :cond_4a

    goto :goto_37

    .line 947
    :cond_4a
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v0, "application"

    .line 951
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    if-eqz v13, :cond_66

    const-string v0, "PackageParsing"

    const-string v1, "<manifest> has more than one <application>"

    .line 956
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-interface {v7, v12}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v15, p4

    goto :goto_a6

    :cond_66
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 961
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v15, p4

    move v13, v10

    goto :goto_a6

    :cond_7a
    const-string v0, "application-salescode"

    .line 964
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    move-object/from16 v15, p4

    move-object/from16 v6, p5

    .line 966
    invoke-static {v7, v8, v15, v6}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->getReplacementForApplicationSalescode(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;

    move-result-object v0

    if-eqz v0, :cond_8d

    move-object v14, v0

    .line 971
    :cond_8d
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_a6

    :cond_92
    move-object/from16 v15, p4

    move-object/from16 v6, p5

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 973
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 976
    :goto_a6
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 977
    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_b1
    if-eqz v14, :cond_c0

    .line 983
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 984
    invoke-static {v8, v14}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->modifyParsingPackageWithReplacement(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;)V

    :cond_c0
    if-nez v13, :cond_e0

    .line 988
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_e0

    const-wide/32 v0, 0x8fcab42

    const-string v2, "<manifest> does not contain an <application> or <instrumentation>"

    .line 989
    invoke-interface {v7, v2, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 992
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 993
    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 997
    :cond_e0
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/pkg/component/ParsedAttributionUtils;->isCombinationValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_f3

    const/16 v0, -0x65

    const-string v1, "Combination <attribution> tags are not valid"

    .line 998
    invoke-interface {v7, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1004
    :cond_f3
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->declareDuplicatePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    if-eqz v0, :cond_102

    const/16 v0, -0x6c

    const-string v1, "Found duplicate permission with a different attribute value."

    .line 1005
    invoke-interface {v7, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1011
    :cond_102
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->convertCompatPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    move-object/from16 v0, p0

    .line 1013
    invoke-virtual {v0, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->convertSplitPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 1018
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v9, :cond_134

    .line 1019
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsSmallScreens()Z

    move-result v0

    if-nez v0, :cond_137

    .line 1020
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsNormalScreens()Z

    move-result v0

    if-nez v0, :cond_137

    .line 1021
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsLargeScreens()Z

    move-result v0

    if-nez v0, :cond_137

    .line 1022
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsExtraLargeScreens()Z

    move-result v0

    if-nez v0, :cond_137

    .line 1023
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_137

    .line 1024
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAnyDensity()Z

    move-result v0

    if-nez v0, :cond_137

    .line 1025
    :cond_134
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 1028
    :cond_137
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public final parseBaseAppBasicFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V
    .registers 9

    .line 2282
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x11

    .line 2287
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v1, 0x5

    .line 2288
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v1, 0x36

    .line 2289
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v1, 0x3b

    .line 2290
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v1, 0x9

    .line 2291
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v1, 0x22

    .line 2292
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v1, 0x7

    .line 2293
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0xe

    .line 2295
    invoke-static {v1, v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x2f

    .line 2296
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x3a

    .line 2297
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0xa

    .line 2298
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x26

    .line 2299
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x27

    .line 2300
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x39

    .line 2301
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x1f

    .line 2302
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x32

    .line 2303
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x18

    .line 2304
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x21

    .line 2305
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x3d

    .line 2306
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x1b

    .line 2307
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x1a

    .line 2308
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0xf

    .line 2309
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x35

    .line 2310
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x31

    .line 2311
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x14

    .line 2312
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x3c

    .line 2313
    invoke-static {v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x45

    .line 2314
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAttributionsAreUserVisible(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x46

    .line 2315
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x49

    .line 2318
    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOnBackInvokedCallbackEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x1d

    if-lt p0, v3, :cond_12c

    move v4, v0

    goto :goto_12d

    :cond_12c
    move v4, v1

    :goto_12d
    const/16 v5, 0x37

    .line 2320
    invoke-static {v4, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    if-lt p0, v2, :cond_13b

    move v2, v0

    goto :goto_13c

    :cond_13b
    move v2, v1

    :goto_13c
    const/16 v4, 0x17

    .line 2321
    invoke-static {v2, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    if-ge p0, v3, :cond_14a

    move v2, v0

    goto :goto_14b

    :cond_14a
    move v2, v1

    :goto_14b
    const/16 v4, 0x38

    .line 2322
    invoke-static {v2, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v2, 0x1c

    if-ge p0, v2, :cond_15a

    goto :goto_15b

    :cond_15a
    move v0, v1

    :goto_15b
    const/16 p0, 0x24

    .line 2323
    invoke-static {v0, p0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x19

    .line 2325
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/4 p1, -0x1

    const/16 v0, 0x2b

    .line 2327
    invoke-static {p1, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x2c

    .line 2329
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x33

    .line 2330
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x1e

    .line 2332
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0xd

    .line 2333
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/4 p1, 0x2

    .line 2334
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x16

    .line 2335
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x29

    .line 2336
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x2a

    .line 2337
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2338
    invoke-static {v1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x42

    .line 2340
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    .line 2339
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x47

    .line 2341
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x2e

    .line 2343
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2344
    invoke-static {v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2345
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/16 p1, 0x34

    .line 2346
    invoke-static {p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    const/4 p1, 0x6

    .line 2348
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    return-void
.end method

.method public final parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2361
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_130

    goto/16 :goto_a8

    :sswitch_d
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_a8

    :cond_18
    const/16 v1, 0xb

    goto/16 :goto_a8

    :sswitch_1c
    const-string/jumbo v0, "profileable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_27

    goto/16 :goto_a8

    :cond_27
    const/16 v1, 0xa

    goto/16 :goto_a8

    :sswitch_2b
    const-string/jumbo v0, "library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_36

    goto/16 :goto_a8

    :cond_36
    const/16 v1, 0x9

    goto/16 :goto_a8

    :sswitch_3a
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_45

    goto/16 :goto_a8

    :cond_45
    const/16 v1, 0x8

    goto/16 :goto_a8

    :sswitch_49
    const-string/jumbo v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_53

    goto :goto_a8

    :cond_53
    const/4 v1, 0x7

    goto :goto_a8

    :sswitch_55
    const-string/jumbo v0, "static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5f

    goto :goto_a8

    :cond_5f
    const/4 v1, 0x6

    goto :goto_a8

    :sswitch_61
    const-string/jumbo v0, "processes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6b

    goto :goto_a8

    :cond_6b
    const/4 v1, 0x5

    goto :goto_a8

    :sswitch_6d
    const-string/jumbo v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_77

    goto :goto_a8

    :cond_77
    const/4 v1, 0x4

    goto :goto_a8

    :sswitch_79
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_83

    goto :goto_a8

    :cond_83
    const/4 v1, 0x3

    goto :goto_a8

    :sswitch_85
    const-string/jumbo v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8f

    goto :goto_a8

    :cond_8f
    const/4 v1, 0x2

    goto :goto_a8

    :sswitch_91
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9b

    goto :goto_a8

    :cond_9b
    const/4 v1, 0x1

    goto :goto_a8

    :sswitch_9d
    const-string/jumbo v0, "sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a7

    goto :goto_a8

    :cond_a7
    const/4 v1, 0x0

    :goto_a8
    packed-switch v1, :pswitch_data_162

    const-string p0, "<application>"

    .line 2403
    invoke-static {p0, p3, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :pswitch_b2
    const/4 p0, 0x0

    .line 2399
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2401
    :pswitch_b8
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2385
    :pswitch_bd
    invoke-static {p3, p4, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2389
    :pswitch_c2
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :pswitch_c7
    const/4 v1, 0x0

    const-string v4, "<property>"

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p1

    .line 2374
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 2376
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_e1

    .line 2377
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_e1
    return-object p0

    .line 2383
    :pswitch_e2
    invoke-static {p3, p4, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseStaticLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2395
    :pswitch_e7
    iget-object v4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :pswitch_f3
    const/4 v1, 0x0

    const-string v4, "<meta-data>"

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p1

    .line 2367
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 2369
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_11b

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11b

    .line 2370
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_11b
    return-object p0

    .line 2391
    :pswitch_11c
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2387
    :pswitch_121
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2393
    :pswitch_126
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2381
    :pswitch_12b
    invoke-static {p3, p4, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSdkLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :sswitch_data_130
    .sparse-switch
        -0x6b7c15d8 -> :sswitch_9d
        -0x5fe67eda -> :sswitch_91
        -0x5aaa6a59 -> :sswitch_85
        -0x50de9846 -> :sswitch_79
        -0x4284098e -> :sswitch_6d
        -0x4140b4a3 -> :sswitch_61
        -0x3efb77a4 -> :sswitch_55
        -0x3b32222b -> :sswitch_49
        0x88b87d -> :sswitch_3a
        0x9e824bb -> :sswitch_2b
        0xa9d2283 -> :sswitch_1c
        0x751e7745 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_12b
        :pswitch_126
        :pswitch_121
        :pswitch_11c
        :pswitch_f3
        :pswitch_e7
        :pswitch_e2
        :pswitch_c7
        :pswitch_c2
        :pswitch_bd
        :pswitch_b8
        :pswitch_b2
    .end packed-switch
.end method

.method public final parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 1895
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1896
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v1

    .line 1898
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v11, v12, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    if-nez v8, :cond_24

    :try_start_1a
    const-string v0, "<application> does not contain any attributes"

    .line 1904
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_4dc

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_24
    const/4 v13, 0x3

    const/4 v14, 0x0

    .line 1907
    :try_start_26
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_4dc

    const-string v3, "Empty class name in package "

    if-eqz v2, :cond_64

    .line 1910
    :try_start_2e
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1911
    invoke-static {v4, v2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1912
    sget-object v5, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    const-string v0, "<application> invalid android:name"

    .line 1913
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_4dc

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_48
    if-nez v2, :cond_61

    .line 1915
    :try_start_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_4a .. :try_end_5d} :catchall_4dc

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1918
    :cond_61
    :try_start_61
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_64
    const/4 v15, 0x1

    .line 1921
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 1923
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v10, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1924
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-nez v4, :cond_7b

    .line 1925
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1929
    :cond_7b
    invoke-virtual {v0, v10, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppBasicFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V

    const/4 v6, 0x4

    const/16 v2, 0x400

    .line 1931
    invoke-static {v2, v6, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a7

    .line 1934
    invoke-static {v7, v4}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a4

    .line 1938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_a0
    .catchall {:try_start_61 .. :try_end_a0} :catchall_4dc

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1941
    :cond_a4
    :try_start_a4
    invoke-interface {v10, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1944
    :cond_a7
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAllowBackup()Z

    move-result v4

    if-eqz v4, :cond_113

    const/16 v4, 0x10

    .line 1948
    invoke-static {v2, v4, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_fd

    .line 1951
    invoke-static {v7, v4}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d2

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_ce
    .catchall {:try_start_a4 .. :try_end_ce} :catchall_4dc

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1961
    :cond_d2
    :try_start_d2
    invoke-interface {v10, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    const/16 v5, 0x12

    .line 1962
    invoke-static {v15, v5, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    const/16 v5, 0x15

    .line 1964
    invoke-static {v14, v5, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    const/16 v5, 0x20

    .line 1966
    invoke-static {v14, v5, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    const/16 v5, 0x28

    .line 1968
    invoke-static {v14, v5, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_fd
    const/16 v4, 0x23

    .line 1972
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_113

    .line 1977
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-nez v5, :cond_110

    .line 1985
    iget v4, v4, Landroid/util/TypedValue;->data:I

    if-nez v4, :cond_10f

    const/4 v5, -0x1

    goto :goto_110

    :cond_10f
    move v5, v14

    .line 1988
    :cond_110
    :goto_110
    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_113
    const/16 v4, 0x8

    .line 1995
    invoke-virtual {v8, v4, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_132

    const/16 v5, 0x2d

    .line 1997
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12e

    .line 1999
    iget-object v6, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v6, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12c

    goto :goto_12e

    :cond_12c
    move v5, v14

    goto :goto_12f

    :cond_12e
    :goto_12e
    move v5, v15

    :goto_12f
    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_132
    const/16 v5, 0x25

    .line 2002
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v6

    if-eqz v6, :cond_146

    .line 2003
    invoke-virtual {v8, v5, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_150

    :cond_146
    const/16 v5, 0x18

    if-lt v1, v5, :cond_14c

    move v5, v15

    goto :goto_14d

    :cond_14c
    move v5, v14

    .line 2006
    :goto_14d
    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :goto_150
    const/16 v5, 0xc

    if-lt v1, v4, :cond_159

    .line 2012
    invoke-virtual {v8, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_15d

    .line 2019
    :cond_159
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2023
    :goto_15d
    invoke-static {v7, v7, v5, v9}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 2025
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_16f

    .line 2026
    invoke-interface {v9, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_16b
    .catchall {:try_start_d2 .. :try_end_16b} :catchall_4dc

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 2029
    :cond_16f
    :try_start_16f
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    const/16 v5, 0x30

    .line 2030
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a0

    .line 2033
    invoke-static {v7, v5}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_19d

    .line 2035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_199
    .catchall {:try_start_16f .. :try_end_199} :catchall_4dc

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 2038
    :cond_19d
    :try_start_19d
    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_1a0
    const/16 v3, 0xb

    if-lt v1, v4, :cond_1a9

    .line 2043
    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1ad

    .line 2050
    :cond_1a9
    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1ad
    move-object v3, v1

    const/4 v2, 0x0

    .line 2053
    iget-object v5, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object v1, v7

    move/from16 v4, p5

    const/4 v6, -0x1

    move v13, v6

    const/16 v16, 0x4

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2055
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 2056
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1c8
    .catchall {:try_start_19d .. :try_end_1c8} :catchall_4dc

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 2059
    :cond_1cc
    :try_start_1cc
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2060
    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2062
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isCantSaveState()Z

    move-result v2

    if-eqz v2, :cond_1ed

    if-eqz v1, :cond_1ed

    .line 2065
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ed

    const-string v0, "cantSaveState applications can not use custom processes"

    .line 2066
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1e9
    .catchall {:try_start_1cc .. :try_end_1e9} :catchall_4dc

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 2071
    :cond_1ed
    :try_start_1ed
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getClassLoaderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_212

    .line 2073
    invoke-static {v1}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_212

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_20e
    .catchall {:try_start_1ed .. :try_end_20e} :catchall_4dc

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_212
    const/16 v1, 0x3e

    .line 2077
    :try_start_214
    invoke-virtual {v8, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    const/16 v1, 0x40

    .line 2078
    invoke-virtual {v8, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    const/16 v1, 0x41

    .line 2079
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_238

    .line 2080
    invoke-virtual {v8, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_234

    move v1, v15

    goto :goto_235

    :cond_234
    move v1, v14

    .line 2082
    :goto_235
    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_238
    const/16 v1, 0x43

    .line 2085
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_24b

    .line 2087
    invoke-virtual {v8, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_24b
    const/16 v1, 0x44

    .line 2091
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_25a

    .line 2093
    invoke-virtual {v8, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_25a
    const/16 v1, 0x48

    .line 2098
    invoke-static {v8, v11, v1, v9}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2101
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_26e

    .line 2102
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_26a
    .catchall {:try_start_214 .. :try_end_26a} :catchall_4dc

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 2105
    :cond_26e
    :try_start_26e
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_279

    .line 2107
    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_279
    .catchall {:try_start_26e .. :try_end_279} :catchall_4dc

    .line 2111
    :cond_279
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2117
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    move/from16 v18, v14

    move/from16 v19, v18

    move/from16 v20, v19

    .line 2119
    :goto_286
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v15, :cond_47f

    const/4 v7, 0x3

    if-ne v1, v7, :cond_295

    .line 2121
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v8, :cond_47f

    :cond_295
    const/4 v6, 0x2

    if-eq v1, v6, :cond_299

    goto :goto_286

    .line 2127
    :cond_299
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2129
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4e2

    :goto_2a7
    move v6, v13

    goto/16 :goto_304

    :sswitch_2aa
    const-string v1, "activity-salescode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b3

    goto :goto_2a7

    :cond_2b3
    const/4 v6, 0x7

    goto :goto_304

    :sswitch_2b5
    const-string/jumbo v1, "service"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2bf

    goto :goto_2a7

    :cond_2bf
    const/4 v6, 0x6

    goto :goto_304

    :sswitch_2c1
    const-string/jumbo v1, "provider-salescode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2cb

    goto :goto_2a7

    :cond_2cb
    const/4 v6, 0x5

    goto :goto_304

    :sswitch_2cd
    const-string v1, "activity-alias"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d6

    goto :goto_2a7

    :cond_2d6
    move/from16 v6, v16

    goto :goto_304

    :sswitch_2d9
    const-string/jumbo v1, "receiver"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e3

    goto :goto_2a7

    :cond_2e3
    move v6, v7

    goto :goto_304

    :sswitch_2e5
    const-string/jumbo v1, "provider"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_304

    goto :goto_2a7

    :sswitch_2ef
    const-string v1, "apex-system-service"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f8

    goto :goto_2a7

    :cond_2f8
    move v6, v15

    goto :goto_304

    :sswitch_2fa
    const-string v1, "activity"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_303

    goto :goto_2a7

    :cond_303
    move v6, v14

    :cond_304
    :goto_304
    packed-switch v6, :pswitch_data_504

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v17, v7

    move/from16 v7, p5

    .line 2221
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    :goto_319
    move/from16 v21, v8

    goto/16 :goto_463

    :pswitch_31d
    move/from16 v17, v7

    .line 2191
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_33c

    .line 2193
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v2

    const-string v6, "<activity-salescode>"

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    .line 2192
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->parseOverlayComponentAndModify(Ljava/lang/String;Ljava/util/List;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)V

    .line 2196
    :cond_33c
    new-instance v1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    goto :goto_319

    :pswitch_346
    move/from16 v17, v7

    .line 2153
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v21, v8

    move-object/from16 v8, p1

    .line 2154
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2157
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_463

    .line 2158
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 2159
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v3

    if-eqz v3, :cond_371

    move v3, v15

    goto :goto_372

    :cond_371
    move v3, v14

    :goto_372
    or-int v20, v20, v3

    .line 2160
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_463

    :pswitch_379
    move/from16 v17, v7

    move/from16 v21, v8

    .line 2200
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_39a

    .line 2202
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v2

    const-string v6, "<provider-salescode>"

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    .line 2201
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->parseOverlayComponentAndModify(Ljava/lang/String;Ljava/util/List;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)V

    .line 2205
    :cond_39a
    new-instance v1, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;-><init>()V

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    goto/16 :goto_463

    :pswitch_3a5
    move/from16 v17, v7

    move/from16 v21, v8

    .line 2177
    sget-boolean v4, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2180
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_463

    .line 2181
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2182
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v3

    if-eqz v3, :cond_3cc

    move v3, v15

    goto :goto_3cd

    :cond_3cc
    move v3, v14

    :goto_3cd
    or-int v18, v18, v3

    .line 2183
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_463

    :pswitch_3d4
    move/from16 v17, v7

    move/from16 v21, v8

    move/from16 v22, v14

    goto :goto_421

    :pswitch_3db
    move/from16 v17, v7

    move/from16 v21, v8

    .line 2166
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v8, p1

    .line 2167
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2170
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_463

    .line 2171
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_463

    :pswitch_403
    move/from16 v17, v7

    move/from16 v21, v8

    .line 2210
    invoke-static {v11, v12, v9}, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceUtils;->parseApexSystemService(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2212
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_463

    .line 2214
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;

    .line 2215
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_463

    :pswitch_41b
    move/from16 v17, v7

    move/from16 v21, v8

    move/from16 v22, v15

    .line 2134
    :goto_421
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v8, p1

    .line 2135
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2139
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_463

    .line 2140
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    if-eqz v22, :cond_453

    .line 2142
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v3

    if-eqz v3, :cond_44a

    move v3, v15

    goto :goto_44b

    :cond_44a
    move v3, v14

    :goto_44b
    or-int v3, v18, v3

    .line 2143
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move/from16 v18, v3

    goto :goto_463

    .line 2145
    :cond_453
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v3

    if-eqz v3, :cond_45b

    move v3, v15

    goto :goto_45c

    :cond_45b
    move v3, v14

    :goto_45c
    or-int v3, v19, v3

    .line 2146
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move/from16 v19, v3

    .line 2225
    :cond_463
    :goto_463
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_46e

    .line 2226
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2228
    :cond_46e
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->hasTooManyComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v1

    if-eqz v1, :cond_47b

    const-string v0, "Total number of components has exceeded the maximum number: 30000"

    .line 2229
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_47b
    move/from16 v8, v21

    goto/16 :goto_286

    .line 2234
    :cond_47f
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_48c

    .line 2235
    invoke-static/range {p2 .. p3}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyRuntimeManifestIfNeeded(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;)V

    .line 2238
    :cond_48c
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b8

    .line 2239
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v1

    .line 2238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b8

    .line 2242
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2243
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_4af

    .line 2248
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2251
    :cond_4af
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_4b8
    if-eqz v18, :cond_4bd

    .line 2255
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_4bd
    if-eqz v19, :cond_4c2

    .line 2258
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_4c2
    if-eqz v20, :cond_4c7

    .line 2261
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2266
    :cond_4c7
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->setMaxAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 2267
    invoke-virtual {v0, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->setMinAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 2268
    invoke-virtual {v0, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->setSupportsSizeChanges(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 2270
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->hasDomainURLs(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    invoke-interface {v10, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2272
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_4dc
    move-exception v0

    .line 2111
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2112
    throw v0

    nop

    :sswitch_data_4e2
    .sparse-switch
        -0x62b40cf1 -> :sswitch_2fa
        -0x5db446de -> :sswitch_2ef
        -0x3adbfa0f -> :sswitch_2e5
        -0x30341611 -> :sswitch_2d9
        0x2f1ad612 -> :sswitch_2cd
        0x36e4801d -> :sswitch_2c1
        0x7643c6b5 -> :sswitch_2b5
        0x76951fbb -> :sswitch_2aa
    .end sparse-switch

    :pswitch_data_504
    .packed-switch 0x0
        :pswitch_41b
        :pswitch_403
        :pswitch_3db
        :pswitch_3d4
        :pswitch_3a5
        :pswitch_379
        :pswitch_346
        :pswitch_31d
    .end packed-switch
.end method

.method public final parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/util/List;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    and-int/lit16 v0, p4, 0x100

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v0, p4

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    and-int/lit16 v2, p4, 0x200

    if-eqz v2, :cond_e

    or-int/lit16 v0, v0, 0x200

    .line 418
    :cond_e
    invoke-static {p1, p2, p3, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/util/List;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p3

    .line 420
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 421
    invoke-interface {p1, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 424
    :cond_1d
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/parsing/PackageLite;

    .line 425
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mOnlyCoreApps:Z

    if-eqz v0, :cond_45

    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->isCoreApp()Z

    move-result v0

    if-nez v0, :cond_45

    const/16 p0, -0x7b

    .line 426
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Not a coreApp: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_45
    const/4 p2, 0x0

    .line 433
    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->isIsolatedSplits()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 435
    :try_start_56
    invoke-static {p3}, Landroid/content/pm/split/SplitDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/parsing/PackageLite;)Landroid/util/SparseArray;

    move-result-object p2

    .line 436
    new-instance v0, Lcom/android/server/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v0, p3, p2, p4}, Lcom/android/server/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/parsing/PackageLite;Landroid/util/SparseArray;I)V
    :try_end_5f
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_56 .. :try_end_5f} :catch_60

    goto :goto_71

    :catch_60
    move-exception p0

    const/16 p2, -0x65

    .line 438
    invoke-virtual {p0}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 441
    :cond_6c
    new-instance v0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v0, p3, p4}, Lcom/android/server/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    .line 445
    :goto_71
    :try_start_71
    new-instance v4, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    move v7, p4

    .line 446
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/split/SplitAssetLoader;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 448
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 449
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_90
    .catch Ljava/lang/IllegalArgumentException; {:try_start_71 .. :try_end_90} :catch_e9
    .catchall {:try_start_71 .. :try_end_90} :catchall_e7

    .line 478
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    .line 452
    :cond_94
    :try_start_94
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 453
    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    .line 455
    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v4

    .line 457
    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object v5

    .line 454
    invoke-interface {v2, v3, v4, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 460
    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    :goto_b8
    if-ge v1, p2, :cond_d8

    .line 463
    invoke-interface {v0, v1}, Lcom/android/server/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move v6, v1

    move v8, p4

    .line 465
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 466
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 467
    invoke-interface {p1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_94 .. :try_end_d1} :catch_e9
    .catchall {:try_start_94 .. :try_end_d1} :catchall_e7

    .line 478
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :cond_d5
    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    .line 472
    :cond_d8
    :try_start_d8
    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result p0

    invoke-interface {v2, p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 473
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_e3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d8 .. :try_end_e3} :catch_e9
    .catchall {:try_start_d8 .. :try_end_e3} :catchall_e7

    .line 478
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_e7
    move-exception p0

    goto :goto_102

    :catch_e9
    move-exception p0

    .line 475
    :try_start_ea
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_f4

    const/4 p2, -0x2

    goto :goto_f6

    :cond_f4
    const/16 p2, -0x64

    .line 476
    :goto_f6
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 475
    invoke-interface {p1, p2, p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_fe
    .catchall {:try_start_ea .. :try_end_fe} :catchall_e7

    .line 478
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :goto_102
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 479
    throw p0
.end method

.method public final parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 491
    invoke-static {p1, p2, p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 493
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 496
    :cond_f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    .line 497
    iget-boolean v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mOnlyCoreApps:Z

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isCoreApp()Z

    move-result v1

    if-nez v1, :cond_37

    const/16 p0, -0x7b

    .line 498
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not a coreApp: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 502
    :cond_37
    new-instance v7, Lcom/android/server/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v7, v0, p3}, Lcom/android/server/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    .line 506
    :try_start_3c
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move v6, p3

    .line 504
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/split/SplitAssetLoader;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 508
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_57

    .line 509
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_53} :catch_6f
    .catchall {:try_start_3c .. :try_end_53} :catchall_6d

    .line 518
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    .line 512
    :cond_57
    :try_start_57
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 513
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result p3

    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 512
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_69} :catch_6f
    .catchall {:try_start_57 .. :try_end_69} :catchall_6d

    .line 518
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_6d
    move-exception p0

    goto :goto_8b

    :catch_6f
    move-exception p0

    const/16 p3, -0x66

    .line 515
    :try_start_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_87
    .catchall {:try_start_72 .. :try_end_87} :catchall_6d

    .line 518
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :goto_8b
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 519
    throw p0
.end method

.method public parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    and-int/lit16 v0, p3, 0x100

    if-eqz v0, :cond_1b

    .line 382
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 383
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/framework-res.apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 384
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/util/List;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 385
    :cond_1b
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-eqz p4, :cond_27

    const/4 p4, 0x0

    .line 386
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/util/List;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 388
    :cond_27
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public final parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1443
    sget-object p0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredFeature:[I

    invoke-virtual {p2, p3, p0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p2, 0x0

    .line 1446
    :try_start_7
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1448
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_18

    const-string p2, "Feature name is missing from <required-feature> tag."

    .line 1449
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    goto :goto_1c

    .line 1450
    :cond_18
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 1452
    :goto_1c
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_20
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1453
    throw p1
.end method

.method public final parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1458
    sget-object p0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredNotFeature:[I

    invoke-virtual {p2, p3, p0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p2, 0x0

    .line 1461
    :try_start_7
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1463
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_18

    const-string p2, "Feature name is missing from <required-not-feature> tag."

    .line 1464
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    goto :goto_1c

    .line 1465
    :cond_18
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 1467
    :goto_1c
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_20
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1468
    throw p1
.end method

.method public final parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "I",
            "Landroid/content/res/AssetManager;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 616
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    .line 621
    invoke-virtual {p4, v0}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_24

    const/16 p0, -0x65

    .line 623
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed adding asset path: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_24
    :try_start_24
    const-string v2, "AndroidManifest.xml"

    .line 626
    invoke-virtual {p4, v1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_84

    .line 628
    :try_start_2a
    new-instance v6, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    invoke-direct {v6, p4, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v1

    move v8, p5

    move v9, p3

    .line 629
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 631
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_72

    .line 632
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " (at "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "): "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 632
    invoke-interface {p1, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_6e
    .catchall {:try_start_2a .. :try_end_6e} :catchall_78

    .line 638
    :try_start_6e
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p0

    :cond_72
    if-eqz v1, :cond_77

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_77} :catch_84

    :cond_77
    return-object p0

    :catchall_78
    move-exception p0

    if-eqz v1, :cond_83

    .line 626
    :try_start_7b
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_83

    :catchall_7f
    move-exception p2

    :try_start_80
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_83
    :goto_83
    throw p0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_84} :catch_84

    :catch_84
    move-exception p0

    const/16 p2, -0x66

    .line 639
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to read manifest from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public final parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    invoke-static {p1, p4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 710
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 711
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 v0, 0x0

    .line 718
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 719
    :cond_14
    :goto_14
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_59

    add-int/lit8 v4, v1, 0x1

    .line 720
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-lt v4, v5, :cond_14

    const/4 v4, 0x2

    if-eq v2, v4, :cond_27

    goto :goto_14

    .line 725
    :cond_27
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "application"

    .line 726
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    if-eqz v0, :cond_42

    const-string v2, "PackageParsing"

    const-string v3, "<manifest> has more than one <application>"

    .line 731
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 732
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_4e

    .line 736
    :cond_42
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move v0, v3

    goto :goto_4e

    :cond_48
    const-string v2, "<manifest>"

    .line 739
    invoke-static {v2, p2, p4, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 742
    :goto_4e
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 743
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_59
    if-nez v0, :cond_6f

    const-wide/32 p3, 0x8fcab42

    const-string p0, "<manifest> does not contain an <application>"

    .line 748
    invoke-interface {p1, p0, p3, p4}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 750
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_6f

    .line 751
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 755
    :cond_6f
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public final parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v1, p6

    .line 768
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual {v11, v12, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v13, 0x1

    .line 770
    :try_start_14
    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-interface {v10, v1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    const/16 v3, 0x2e

    .line 773
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 775
    invoke-static {v3}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_43

    .line 779
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid class loader name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_173

    .line 782
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 777
    :cond_43
    :goto_43
    :try_start_43
    invoke-interface {v10, v1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_173

    .line 782
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 789
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v14, v2, v1

    .line 791
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 793
    :cond_53
    :goto_53
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v13, :cond_16e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_62

    .line 795
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v15, :cond_16e

    :cond_62
    const/4 v3, 0x2

    if-eq v1, v3, :cond_66

    goto :goto_53

    .line 803
    :cond_66
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 805
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_178

    :goto_76
    move v2, v1

    goto :goto_af

    :sswitch_78
    const-string/jumbo v2, "service"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    goto :goto_76

    :cond_82
    const/4 v2, 0x4

    goto :goto_af

    :sswitch_84
    const-string v3, "activity-alias"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_af

    goto :goto_76

    :sswitch_8d
    const-string/jumbo v2, "receiver"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    goto :goto_76

    :cond_97
    move v2, v3

    goto :goto_af

    :sswitch_99
    const-string/jumbo v2, "provider"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    goto :goto_76

    :cond_a3
    move v2, v13

    goto :goto_af

    :sswitch_a5
    const-string v2, "activity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    goto :goto_76

    :cond_ae
    move v2, v6

    :cond_af
    :goto_af
    packed-switch v2, :pswitch_data_18e

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 858
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    goto/16 :goto_156

    .line 825
    :pswitch_c3
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v14

    move-object/from16 v8, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 828
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_156

    .line 829
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 830
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_156

    .line 847
    :pswitch_e7
    sget-boolean v4, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v5, v14

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 849
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_156

    .line 850
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 851
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_156

    :pswitch_106
    move/from16 v16, v6

    goto :goto_12e

    .line 836
    :pswitch_109
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v14

    move-object/from16 v8, p1

    .line 837
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 839
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_156

    .line 840
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 841
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_156

    :pswitch_12c
    move/from16 v16, v13

    .line 810
    :goto_12e
    iget-object v1, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v14

    move-object/from16 v8, p1

    .line 811
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 813
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_156

    .line 814
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    if-eqz v16, :cond_153

    .line 816
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_156

    .line 818
    :cond_153
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 862
    :cond_156
    :goto_156
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_161

    .line 863
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 866
    :cond_161
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->hasTooManyComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v0, "Total number of components has exceeded the maximum number: 30000"

    .line 867
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 871
    :cond_16e
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_173
    move-exception v0

    .line 782
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 783
    throw v0

    :sswitch_data_178
    .sparse-switch
        -0x62b40cf1 -> :sswitch_a5
        -0x3adbfa0f -> :sswitch_99
        -0x30341611 -> :sswitch_8d
        0x2f1ad612 -> :sswitch_84
        0x7643c6b5 -> :sswitch_78
    .end sparse-switch

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_12c
        :pswitch_109
        :pswitch_106
        :pswitch_e7
        :pswitch_c3
    .end packed-switch
.end method

.method public final parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 886
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_c8

    goto :goto_5f

    :sswitch_c
    const-string/jumbo p0, "uses-package"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_5f

    :cond_16
    const/4 v0, 0x6

    goto :goto_5f

    :sswitch_18
    const-string/jumbo p0, "uses-static-library"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_5f

    :cond_22
    const/4 v0, 0x5

    goto :goto_5f

    :sswitch_24
    const-string/jumbo p0, "property"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_5f

    :cond_2e
    const/4 v0, 0x4

    goto :goto_5f

    :sswitch_30
    const-string/jumbo p0, "meta-data"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_5f

    :cond_3a
    const/4 v0, 0x3

    goto :goto_5f

    :sswitch_3c
    const-string/jumbo p0, "uses-library"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto :goto_5f

    :cond_46
    const/4 v0, 0x2

    goto :goto_5f

    :sswitch_48
    const-string/jumbo p0, "uses-sdk-library"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto :goto_5f

    :cond_52
    const/4 v0, 0x1

    goto :goto_5f

    :sswitch_54
    const-string/jumbo p0, "uses-native-library"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    packed-switch v0, :pswitch_data_e6

    const-string p0, "<application>"

    .line 917
    invoke-static {p0, p3, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :pswitch_69
    const/4 p0, 0x0

    .line 915
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 907
    :pswitch_6f
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :pswitch_74
    const/4 v1, 0x0

    const-string v4, "<property>"

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p1

    .line 898
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 900
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 901
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_8e
    return-object p0

    :pswitch_8f
    const/4 v1, 0x0

    const-string v4, "<meta-data>"

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p1

    .line 891
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 893
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_b7

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b7

    .line 894
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_b7
    return-object p0

    .line 909
    :pswitch_b8
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 905
    :pswitch_bd
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 911
    :pswitch_c2
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_c8
    .sparse-switch
        -0x5fe67eda -> :sswitch_54
        -0x5aaa6a59 -> :sswitch_48
        -0x50de9846 -> :sswitch_3c
        -0x4284098e -> :sswitch_30
        -0x3b32222b -> :sswitch_24
        0x88b87d -> :sswitch_18
        0x751e7745 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_bd
        :pswitch_b8
        :pswitch_8f
        :pswitch_74
        :pswitch_6f
        :pswitch_69
    .end packed-switch
.end method

.method public final parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1304
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x0

    .line 1308
    :try_start_11
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 1310
    invoke-static {v7}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x200

    if-le v8, v9, :cond_29

    const/16 v0, -0x6c

    const-string v2, "The name in the <uses-permission> is greater than 512"

    .line 1311
    invoke-interface {v1, v0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_1ce

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_29
    const/4 v8, 0x1

    .line 1317
    :try_start_2a
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    if-eqz v9, :cond_3d

    .line 1320
    iget v10, v9, Landroid/util/TypedValue;->type:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_3d

    const/16 v11, 0x1f

    if-gt v10, v11, :cond_3d

    .line 1321
    iget v9, v9, Landroid/util/TypedValue;->data:I

    goto :goto_3e

    :cond_3d
    move v9, v6

    .line 1325
    :goto_3e
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    const/4 v11, 0x2

    .line 1326
    invoke-virtual {v5, v11, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4d

    .line 1330
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1333
    :cond_4d
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    const/4 v12, 0x3

    .line 1334
    invoke-virtual {v5, v12, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5c

    .line 1339
    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5c
    const/4 v13, 0x4

    .line 1342
    invoke-virtual {v5, v13, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 1346
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 1348
    :goto_65
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v8, :cond_eb

    if-ne v6, v12, :cond_73

    .line 1350
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v15, :cond_eb

    :cond_73
    if-eq v6, v12, :cond_e8

    if-ne v6, v13, :cond_79

    goto/16 :goto_e8

    .line 1356
    :cond_79
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v12, 0x341a4cce

    if-eq v8, v12, :cond_97

    const v12, 0x64ee7ac8

    if-eq v8, v12, :cond_8c

    goto :goto_a2

    :cond_8c
    const-string/jumbo v8, "required-feature"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    const/4 v6, 0x0

    goto :goto_a3

    :cond_97
    const-string/jumbo v8, "required-not-feature"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    const/4 v6, 0x1

    goto :goto_a3

    :cond_a2
    :goto_a2
    const/4 v6, -0x1

    :goto_a3
    if-eqz v6, :cond_c3

    const/4 v8, 0x1

    if-eq v6, v8, :cond_af

    const-string v6, "<uses-permission>"

    .line 1372
    invoke-static {v6, v2, v4, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_d6

    .line 1365
    :cond_af
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 1366
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 1367
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 1358
    :cond_c3
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 1359
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 1360
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1376
    :cond_d6
    :goto_d6
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 1377
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_e0
    .catchall {:try_start_2a .. :try_end_e0} :catchall_1ce

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_e4
    const/4 v8, 0x1

    const/4 v12, 0x3

    goto/16 :goto_65

    :cond_e8
    :goto_e8
    const/4 v8, 0x1

    goto/16 :goto_65

    .line 1382
    :cond_eb
    :try_start_eb
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_ef
    .catchall {:try_start_eb .. :try_end_ef} :catchall_1ce

    if-nez v7, :cond_f5

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_f5
    if-eqz v9, :cond_ff

    .line 1388
    :try_start_f7
    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I
    :try_end_f9
    .catchall {:try_start_f7 .. :try_end_f9} :catchall_1ce

    if-ge v9, v6, :cond_ff

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    .line 1392
    :cond_ff
    :try_start_ff
    iget-object v6, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    if-eqz v6, :cond_13d

    .line 1395
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    :goto_109
    if-ltz v6, :cond_120

    .line 1396
    iget-object v8, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v8
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_1ce

    if-nez v8, :cond_11d

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_11d
    add-int/lit8 v6, v6, -0x1

    goto :goto_109

    .line 1403
    :cond_120
    :try_start_120
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    :goto_126
    if-ltz v6, :cond_13e

    .line 1404
    iget-object v9, v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v11, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v9
    :try_end_134
    .catchall {:try_start_120 .. :try_end_134} :catchall_1ce

    if-eqz v9, :cond_13a

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_13a
    add-int/lit8 v6, v6, -0x1

    goto :goto_126

    :cond_13d
    const/4 v8, 0x1

    .line 1413
    :cond_13e
    :try_start_13e
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesPermissions()Ljava/util/List;

    move-result-object v0

    .line 1414
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_147
    if-ge v9, v6, :cond_1bf

    .line 1416
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;

    .line 1417
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1bc

    .line 1418
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v0
    :try_end_15d
    .catchall {:try_start_13e .. :try_end_15d} :catchall_1ce

    const-string v6, " at: "

    const-string v9, " in package: "

    if-eq v0, v14, :cond_190

    .line 1419
    :try_start_163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflicting uses-permissions flags: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1419
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_18c
    .catchall {:try_start_163 .. :try_end_18c} :catchall_1ce

    .line 1437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_190
    :try_start_190
    const-string v0, "PackageParsing"

    .line 1423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1423
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    goto :goto_1c0

    :cond_1bc
    add-int/lit8 v9, v9, 0x1

    goto :goto_147

    :cond_1bf
    const/4 v6, 0x0

    :goto_1c0
    if-nez v6, :cond_1ca

    .line 1433
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;

    invoke-direct {v0, v7, v14}, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_1ca
    .catchall {:try_start_190 .. :try_end_1ca} :catchall_1ce

    .line 1437
    :cond_1ca
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_1ce
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1438
    throw v0
.end method

.method public final setMinAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 7

    .line 2846
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getMinAspectRatio()F

    move-result p0

    .line 2848
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p1

    .line 2849
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_29

    .line 2851
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2852
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_26

    .line 2853
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v3

    invoke-static {v2, v3, p0}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setMinAspectRatio(Lcom/android/server/pm/pkg/component/ParsedActivity;IF)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_29
    return-void
.end method

.method public final setSupportsSizeChanges(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 9

    .line 2860
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.supports_size_changes"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_12

    .line 2862
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_12

    move p0, v1

    goto :goto_13

    :cond_12
    move p0, v2

    .line 2864
    :goto_13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p1

    .line 2865
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_1c
    if-ge v4, v3, :cond_36

    .line 2867
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedActivity;

    if-nez p0, :cond_30

    .line 2868
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object v6

    .line 2869
    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 2870
    :cond_30
    invoke-static {v5, v1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setSupportsSizeChanges(Lcom/android/server/pm/pkg/component/ParsedActivity;Z)V

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_36
    return-void
.end method
