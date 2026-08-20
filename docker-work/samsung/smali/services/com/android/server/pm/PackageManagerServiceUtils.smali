.class public Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_PACKAGE_PARSER_CACHE_ENABLED:Z = true

.field public static final ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:J = 0x99c835cL

.field public static final FORCE_PACKAGE_PARSED_CACHE_ENABLED:Z = false

.field public static final FSVERITY_DISABLED:I = 0x0

.field public static final FSVERITY_ENABLED:I = 0x2

.field public static final MAX_CRITICAL_INFO_DUMP_SIZE:J = 0x2dc6c0L

.field public static final REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DfU-frVeYVl3--0HQjqUKDAZs_c(Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$applyEnforceIntentFilterMatching$1(Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TIKXvzobl6Pjs5sDqgFWI4sddmM(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$static$0(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 136
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 138
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/compat/PlatformCompat;",
            "Lcom/android/server/pm/resolution/ComponentResolverApi;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1108
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_ae

    .line 1109
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 1112
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    invoke-static {v2, p6, v3, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_a2

    :cond_20
    const-wide/32 v2, 0x99c835c

    .line 1118
    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto/16 :goto_a2

    .line 1124
    :cond_2d
    instance-of v2, v1, Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_45

    if-eqz p3, :cond_3c

    .line 1126
    invoke-virtual {v1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v1

    goto :goto_51

    .line 1128
    :cond_3c
    invoke-virtual {v1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v1

    goto :goto_51

    .line 1130
    :cond_45
    instance-of v2, v1, Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_a6

    .line 1131
    invoke-virtual {v1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedService;

    move-result-object v1

    :goto_51
    if-eqz v1, :cond_a2

    .line 1137
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5e

    goto :goto_a2

    .line 1141
    :cond_5e
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, p4, p5}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent does not match component\'s intent filter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Access blocked: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a2
    :goto_a2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    .line 1134
    :cond_a6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported component type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ae
    return-void
.end method

.method public static arrayToString([I)Ljava/lang/String;
    .registers 4

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 1187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_21

    const/4 v1, 0x0

    .line 1189
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_21

    if-lez v1, :cond_19

    const-string v2, ", "

    .line 1190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    :cond_19
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_21
    const/16 p0, 0x5d

    .line 1194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1032
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1033
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1034
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object p0

    const-string v2, "0"

    if-nez p0, :cond_25

    .line 1037
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 1039
    :cond_25
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    if-eqz p1, :cond_69

    .line 1041
    array-length p0, p1

    if-nez p0, :cond_32

    goto :goto_69

    .line 1045
    :cond_32
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    :goto_35
    if-ltz p0, :cond_64

    .line 1046
    aget-object v3, p1, p0

    .line 1047
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1048
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1049
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object v3

    const-string v5, ";"

    .line 1050
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_5a

    .line 1052
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 1054
    :cond_5a
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_61
    add-int/lit8 p0, p0, -0x1

    goto :goto_35

    .line 1057
    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1042
    :cond_69
    :goto_69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J
    .registers 4

    .line 896
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 898
    :try_start_5
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    .line 900
    invoke-virtual {p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object p0

    const/4 v1, 0x0

    .line 899
    invoke-static {p0, v0, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 901
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-nez v0, :cond_23

    .line 905
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/parsing/PackageLite;

    invoke-static {p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 902
    :cond_23
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    .line 903
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_35
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_35} :catch_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_35} :catch_35

    :catch_35
    move-exception p0

    .line 907
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to calculate installed size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static canJoinSharedUserId(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z
    .registers 4

    const/4 v0, 0x2

    .line 674
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 675
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public static checkDowngrade(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1389
    invoke-virtual {p1}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-string v1, " is older than current "

    const/16 v2, -0x19

    if-ltz v0, :cond_a2

    .line 1393
    invoke-virtual {p1}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_a1

    .line 1394
    iget v0, p1, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getBaseRevisionCode()I

    move-result v3

    if-lt v0, v3, :cond_7e

    .line 1400
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const/4 v0, 0x0

    .line 1401
    :goto_2d
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_a1

    .line 1402
    aget-object v3, v3, v0

    .line 1403
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7b

    .line 1405
    iget-object v5, p1, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    aget v5, v5, v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitRevisionCodes()[I

    move-result-object v6

    aget v6, v6, v4

    if-lt v5, v6, :cond_4c

    goto :goto_7b

    .line 1406
    :cond_4c
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update split "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " revision code "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    aget p1, p1, v0

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitRevisionCodes()[I

    move-result-object p0

    aget p0, p0, v4

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_7b
    :goto_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1395
    :cond_7e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update base revision code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getBaseRevisionCode()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_a1
    return-void

    .line 1390
    :cond_a2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update version code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static checkISA(Ljava/lang/String;)Z
    .registers 6

    .line 232
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 233
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_18
    return v2
.end method

.method public static comparePackageSignatures(Lcom/android/server/pm/PackageSetting;[Landroid/content/pm/Signature;)Z
    .registers 3

    .line 409
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 410
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq p0, v0, :cond_15

    .line 411
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 8

    const/4 v0, 0x1

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    if-nez p1, :cond_c

    const/4 p0, -0x2

    return p0

    .line 377
    :cond_c
    array-length v1, p0

    array-length v2, p1

    const/4 v3, -0x3

    if-eq v1, v2, :cond_12

    return v3

    .line 382
    :cond_12
    array-length v1, p0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_22

    .line 383
    aget-object p0, p0, v2

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    move v3, v2

    :cond_21
    return v3

    .line 388
    :cond_22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 389
    array-length v1, p0

    move v4, v2

    :goto_29
    if-ge v4, v1, :cond_33

    aget-object v5, p0, v4

    .line 390
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 392
    :cond_33
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 393
    array-length v1, p1

    move v4, v2

    :goto_3a
    if-ge v4, v1, :cond_44

    aget-object v5, p1, v4

    .line 394
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 397
    :cond_44
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    return v2

    :cond_4b
    return v3
.end method

.method public static compressedFileExists(Ljava/lang/String;)Z
    .registers 1

    .line 830
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 831
    array-length p0, p0

    if-lez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    invoke-static {p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget p2, Landroid/system/OsConstants;->O_RDWR:I

    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr p2, v1

    const/16 v1, 0x1a4

    invoke-static {p1, p2, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 997
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 1000
    :try_start_40
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_53

    .line 1001
    :try_start_45
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_50

    .line 1003
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_50
    move-exception p0

    move-object p2, v0

    goto :goto_54

    :catchall_53
    move-exception p0

    :goto_54
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1004
    throw p0

    .line 990
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid filename: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyPackage(Ljava/lang/String;Ljava/io/File;)I
    .registers 8

    const-string v0, "PackageManager"

    if-nez p0, :cond_6

    const/4 p0, -0x3

    return p0

    .line 964
    :cond_6
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 965
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v2

    .line 967
    invoke-virtual {v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v2

    const/4 v3, 0x0

    .line 966
    invoke-static {v2, v1, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 968
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse package at "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p0

    return p0

    .line 972
    :cond_37
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/PackageLite;

    .line 973
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "base.apk"

    invoke-static {v2, p1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 974
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 975
    :goto_50
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v3, v2, :cond_80

    .line 976
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "split_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 976
    invoke-static {v2, p1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_7d} :catch_82
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_7d} :catch_82

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_80
    const/4 p0, 0x1

    return p0

    :catch_82
    move-exception p1

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy package at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0
.end method

.method public static decompressFile(Ljava/io/File;Ljava/io/File;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 760
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string v1, ", dst: "

    if-eqz v0, :cond_2a

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decompress file; src: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    .line 761
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_2a
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 768
    :try_start_30
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3a} :catch_5f

    .line 770
    :try_start_3a
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 771
    invoke-static {v3, v2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 773
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 774
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    const/16 v5, 0x1a4

    invoke-static {v4, v5}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    .line 775
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_55

    const/4 v4, 0x1

    .line 777
    :try_start_51
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5f

    return v4

    :catchall_55
    move-exception v4

    .line 767
    :try_start_56
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v3

    :try_start_5b
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5e
    throw v4
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_5f

    :catch_5f
    const/4 v3, 0x6

    .line 778
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decompress file; src: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 778
    invoke-static {v3, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 781
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const/16 p0, -0x6e

    return p0
.end method

.method public static decompressFiles(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)I
    .registers 13

    const-string v0, "Failed to decompress; pkg: "

    .line 734
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    const/16 v1, 0x1ed

    const/4 v2, 0x6

    const/4 v3, 0x1

    .line 737
    :try_start_a
    invoke-static {p1, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    .line 738
    array-length v1, p0
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_e} :catch_4f

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_11
    if-ge v5, v1, :cond_6d

    :try_start_13
    aget-object v7, p0, v5

    .line 739
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 741
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    .line 740
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 742
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 743
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->decompressFile(Ljava/io/File;Ljava/io/File;)I

    move-result v6

    if-eq v6, v3, :cond_49

    .line 745
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", file: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_48
    .catch Landroid/system/ErrnoException; {:try_start_13 .. :try_end_48} :catch_4c

    goto :goto_6d

    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :catch_4c
    move-exception p0

    move v3, v6

    goto :goto_50

    :catch_4f
    move-exception p0

    .line 752
    :goto_50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", err: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    move v6, v3

    :cond_6d
    :goto_6d
    return v6
.end method

.method public static deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "-"

    .line 347
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method public static dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 262
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x2dc6c0

    sub-long/2addr v1, v3

    .line 264
    :try_start_c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_48

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-lez v0, :cond_22

    .line 266
    :try_start_1c
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_3f

    .line 269
    :cond_22
    :goto_22
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    const-string/jumbo v1, "ignored: updated version"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_22

    :cond_32
    const-wide v1, 0x20900000007L

    .line 271
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_20

    goto :goto_22

    .line 273
    :cond_3b
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_48

    goto :goto_48

    .line 264
    :goto_3f
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v0

    :try_start_44
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p0
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    :goto_48
    return-void
.end method

.method public static dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 278
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x2dc6c0

    sub-long/2addr v1, v3

    .line 280
    :try_start_c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_48

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-lez v0, :cond_22

    .line 282
    :try_start_1c
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_3f

    .line 285
    :cond_22
    :goto_22
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    const-string/jumbo v1, "ignored: updated version"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_22

    :cond_32
    if-eqz p1, :cond_37

    .line 288
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    :cond_37
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_20

    goto :goto_22

    .line 292
    :cond_3b
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_48

    goto :goto_48

    .line 280
    :goto_3f
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p1

    :try_start_44
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p0
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    :goto_48
    return-void
.end method

.method public static enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V
    .registers 5

    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_49

    if-ltz p3, :cond_24

    .line 320
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_24

    .line 322
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Shell does not have permission to access user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    :goto_24
    if-gez p3, :cond_49

    .line 325
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to check shell permission for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n\t"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 326
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 325
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-void
.end method

.method public static enforceSystemOrPhoneCaller(Ljava/lang/String;I)V
    .registers 5

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_28

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_9

    goto :goto_28

    .line 337
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from UID "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_28
    return-void
.end method

.method public static enforceSystemOrRoot(Ljava/lang/String;)V
    .registers 2

    .line 1303
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1304
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceSystemOrRootOrShell(Ljava/lang/String;)V
    .registers 2

    .line 1274
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1275
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractNativeBinaries(Ljava/io/File;Ljava/lang/String;)I
    .registers 5

    .line 682
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 685
    :try_start_9
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_1d
    .catchall {:try_start_9 .. :try_end_d} :catchall_1b

    const/4 v2, 0x0

    .line 686
    :try_start_e
    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result p1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_19
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    .line 693
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p1

    :catchall_16
    move-exception p1

    move-object v1, p0

    goto :goto_38

    :catch_19
    move-object v1, p0

    goto :goto_1d

    :catchall_1b
    move-exception p1

    goto :goto_38

    :catch_1d
    :goto_1d
    const/4 p0, 0x6

    .line 689
    :try_start_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to extract native libraries; pkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_1b

    const/16 p0, -0x6e

    .line 693
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :goto_38
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 694
    throw p1
.end method

.method public static getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;
    .registers 7

    .line 787
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-Stub"

    .line 803
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_75

    .line 804
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v2, 0x5

    if-eq v4, v5, :cond_1b

    goto :goto_75

    .line 808
    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v4, "PackageManager"

    if-nez v0, :cond_38

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to determine stub parent dir for codePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 814
    :cond_38
    new-instance v3, Ljava/io/File;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 815
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$1;-><init>()V

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 822
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v1, :cond_74

    if-eqz v0, :cond_74

    array-length v1, v0

    if-lez v1, :cond_74

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompressedFiles["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return-object v0

    :cond_75
    :goto_75
    return-object v3
.end method

.method public static getLastModifiedTime(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)J
    .registers 6

    .line 241
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_14

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 245
    :cond_14
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 247
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_28
    if-ltz v2, :cond_40

    .line 248
    new-instance v3, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    :cond_40
    return-wide v0
.end method

.method public static getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    .registers 8

    .line 839
    new-instance v0, Landroid/content/pm/PackageInfoLite;

    invoke-direct {v0}, Landroid/content/pm/PackageInfoLite;-><init>()V

    const/4 v1, -0x2

    if-eqz p2, :cond_88

    if-nez p1, :cond_c

    goto/16 :goto_88

    .line 846
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 849
    :try_start_11
    invoke-static {p1, p4}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_7b

    .line 860
    new-instance p2, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 p4, -0x1

    invoke-direct {p2, p4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 862
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 863
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result p4

    iput p4, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 864
    iput-wide v1, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 865
    iput p3, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 868
    :try_start_2b
    invoke-static {p0, p2}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result p0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_74

    .line 873
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 874
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    .line 875
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result p2

    iput p2, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 876
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCodeMajor()I

    move-result p2

    iput p2, v0, Landroid/content/pm/PackageInfoLite;->versionCodeMajor:I

    .line 877
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getBaseRevisionCode()I

    move-result p2

    iput p2, v0, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    .line 878
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object p2

    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    .line 879
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result p2

    iput p2, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 880
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVerifiers()[Landroid/content/pm/VerifierInfo;

    move-result-object p2

    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 881
    iput p0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 882
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    move-result p0

    iput-boolean p0, v0, Landroid/content/pm/PackageInfoLite;->multiArch:Z

    .line 883
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result p0

    iput-boolean p0, v0, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    .line 884
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result p0

    iput-boolean p0, v0, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    return-object v0

    :catch_74
    move-exception p0

    .line 871
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 851
    :catch_7b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_85

    const/4 p0, -0x6

    .line 852
    iput p0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_87

    .line 854
    :cond_85
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    :goto_87
    return-object v0

    .line 841
    :cond_88
    :goto_88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid package file "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return-object v0
.end method

.method public static getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .line 1209
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 1213
    :cond_9
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 1215
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1216
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1219
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1220
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1223
    sget-boolean p0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    if-eqz p0, :cond_8a

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->tryParsePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_62

    goto :goto_8a

    .line 1224
    :cond_62
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "codepath is off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8a
    :goto_8a
    return-object v0
.end method

.method public static getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I
    .registers 3

    if-eqz p0, :cond_1c

    .line 1250
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1252
    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 1255
    :cond_10
    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x2

    return p0

    :cond_18
    if-eqz p1, :cond_1c

    const/4 p0, 0x3

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static getRootHash(Ljava/lang/String;)[B
    .registers 3

    .line 1070
    :try_start_0
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->unsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1075
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v0

    .line 1076
    iget-object v0, v0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    if-eqz v0, :cond_2e

    .line 1080
    invoke-static {v0}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v0

    .line 1081
    iget-object v1, v0, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1084
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p0, v0, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v1, p0}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    move-result-object p0

    return-object p0

    .line 1082
    :cond_26
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Root has not present"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1077
    :cond_2e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Hashing info not present"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1072
    :cond_36
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File signature not present"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3e} :catch_3e

    :catch_3e
    const-string p0, "PackageManager"

    const-string v0, "ERROR: could not load root hash from incremental install"

    .line 1086
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSettingsProblemFile()Ljava/io/File;
    .registers 3

    .line 255
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "uiderrors.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z
    .registers 6

    .line 1168
    invoke-interface/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isActiveInForegroundWithinThresholdTime(JJJ)Z
    .registers 6

    sub-long/2addr p0, p4

    cmp-long p0, p0, p2

    if-gez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isApkVerityEnabled()Z
    .registers 3

    .line 506
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_11

    const-string/jumbo v0, "ro.apk_verity.mode"

    .line 507
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static isDowngradePermitted(IZ)Z
    .registers 5

    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    if-nez v0, :cond_c

    return v2

    .line 942
    :cond_c
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_15

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    move p1, v2

    goto :goto_16

    :cond_15
    :goto_15
    move p1, v1

    :goto_16
    if-eqz p1, :cond_19

    return v1

    :cond_19
    const/high16 p1, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public static isSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .registers 2

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static isSystemOrRoot()Z
    .registers 2

    .line 1291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static isSystemOrRootOrShell()Z
    .registers 2

    .line 1283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    if-eqz v0, :cond_11

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public static isUnusedSinceTimeInMillis(JJJLcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;JJ)Z
    .registers 11

    sub-long p0, p2, p0

    cmp-long p0, p0, p4

    const/4 p1, 0x0

    if-gez p0, :cond_8

    return p1

    :cond_8
    sub-long p9, p2, p9

    cmp-long p0, p9, p4

    const/4 p9, 0x1

    if-gez p0, :cond_11

    move p0, p9

    goto :goto_12

    :cond_11
    move p0, p1

    :goto_12
    if-eqz p0, :cond_15

    return p1

    :cond_15
    sub-long/2addr p2, p7

    cmp-long p0, p2, p4

    if-gez p0, :cond_21

    .line 198
    invoke-virtual {p6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result p0

    if-eqz p0, :cond_21

    move p1, p9

    :cond_21
    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method public static isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .registers 1

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static synthetic lambda$applyEnforceIntentFilterMatching$1(Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Z
    .registers 3

    .line 1142
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/android/server/IntentResolver;->intentMatchesFilter(Landroid/content/IntentFilter;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$applyEnforceIntentFilterMatching$2(Landroid/util/Printer;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)V
    .registers 3

    .line 1149
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    const-string v0, "  "

    invoke-virtual {p1, p0, v0}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    .line 139
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static logCriticalInfo(ILjava/lang/String;)V
    .registers 7

    const-string v0, "PackageManager"

    .line 297
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writePmCriticalInfo(Ljava/lang/String;)V

    .line 300
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object p0

    .line 301
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 302
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 303
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 304
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 308
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1fc

    const/4 v0, -0x1

    .line 307
    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_4d} :catch_4d

    :catch_4d
    return-void
.end method

.method public static makeDirRecursive(Ljava/io/File;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1011
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    .line 1012
    invoke-interface {p0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_9
    if-gt v1, v0, :cond_2c

    const/4 v2, 0x0

    .line 1015
    invoke-interface {p0, v2, v1}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    .line 1016
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_29

    .line 1019
    :cond_1b
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 1020
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2c
    return-void
.end method

.method public static matchSignatureInSystem(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/PackageSetting;)Z
    .registers 5

    .line 485
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    const/4 v1, 0x1

    .line 484
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 487
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_2f

    :cond_18
    const/4 p1, 0x6

    .line 492
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updated system app mismatches cert on /system: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z
    .registers 14

    .line 423
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 424
    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_18

    aget-object v5, v1, v4

    .line 425
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 427
    :cond_18
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 428
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_23
    if-ge v5, v4, :cond_3d

    aget-object v6, v2, v5

    .line 430
    :try_start_27
    invoke-virtual {v6}, Landroid/content/pm/Signature;->getChainSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 431
    array-length v8, v7

    move v9, v3

    :goto_2d
    if-ge v9, v8, :cond_3a

    aget-object v10, v7, v9

    .line 432
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_27 .. :try_end_34} :catch_37

    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 435
    :catch_37
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 439
    :cond_3d
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 441
    iput-object p2, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    const/4 p0, 0x1

    return p0

    .line 443
    :cond_47
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p1

    if-eqz p1, :cond_67

    const/4 p1, 0x4

    .line 448
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Existing package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has flattened signing certificate chain. Unable to install newer version with rotated signing certificate."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_67
    return v3
.end method

.method public static matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z
    .registers 5
    .param p3    # I
        .annotation build Landroid/content/pm/SigningDetails$CertCapabilities;
        .end annotation
    .end param

    const/4 v0, 0x4

    .line 462
    :try_start_1
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/SigningDetails;->checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 463
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Recovered effectively matching certificates for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1b} :catch_1f

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p1, 0x0

    goto :goto_24

    :catch_1f
    move-exception p1

    .line 468
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 470
    :goto_24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to recover certificates for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static preparePackageParserCache(ZZLjava/lang/String;)Ljava/io/File;
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    return-object v0

    :cond_4
    const-string/jumbo p0, "pm.boot.disable_package_cache"

    const/4 v1, 0x0

    .line 1320
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string v2, "PackageManager"

    if-eqz p0, :cond_16

    const-string p0, "Disabling package parser cache due to system property."

    .line 1321
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1327
    :cond_16
    invoke-static {}, Landroid/os/Environment;->getPackageCacheDirectory()Ljava/io/File;

    move-result-object p0

    .line 1328
    invoke-static {p0}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_21

    return-object v0

    .line 1335
    :cond_21
    sget-object v3, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 1339
    invoke-static {p0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    :goto_28
    if-ge v1, v5, :cond_6d

    aget-object v6, v4, v1

    .line 1340
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 1341
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keeping known cache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 1343
    :cond_4f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying unknown cache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-static {v6}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1349
    :cond_6d
    invoke-static {p0, v3}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_8b

    .line 1353
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cache directory cannot be created - wiping base dir "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    return-object v0

    :cond_8b
    if-eqz p1, :cond_b8

    const-string p1, "eng."

    .line 1365
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b8

    const-string p1, "Wiping cache directory because the system partition changed."

    .line 1366
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    new-instance p1, Ljava/io/File;

    .line 1373
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p2

    const-string v0, "framework"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long p1, v4, p1

    if-gez p1, :cond_b8

    .line 1375
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 1376
    invoke-static {p0, v3}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :cond_b8
    return-object v1
.end method

.method public static realpath(Ljava/io/File;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 223
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static removeNativeBinariesLI(Lcom/android/server/pm/PackageSetting;)V
    .registers 1

    if-eqz p0, :cond_9

    .line 702
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesLI(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static tryParsePackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x2d

    .line 1231
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x0

    .line 1235
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1233
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid package folder name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    .line 1176
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1177
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 527
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_91

    .line 532
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 531
    invoke-virtual {p3, v1, v3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    const/16 v4, 0x8

    if-nez v1, :cond_29

    .line 534
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1, p3, v4}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_29

    :cond_27
    move v1, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move v1, v3

    :goto_2a
    if-nez v1, :cond_38

    if-eqz p4, :cond_38

    .line 538
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z

    move-result v1

    move v5, v1

    goto :goto_39

    :cond_38
    move v5, v2

    :goto_39
    if-nez v1, :cond_55

    if-eqz p5, :cond_55

    .line 545
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 543
    invoke-static {v0, v1, p3, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_54

    .line 551
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 548
    invoke-static {v0, p3, v1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_54

    :cond_52
    move v1, v2

    goto :goto_55

    :cond_54
    :goto_54
    move v1, v3

    :cond_55
    :goto_55
    if-nez v1, :cond_65

    .line 555
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 556
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignatureInSystem(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    :cond_65
    if-nez v1, :cond_71

    if-eqz p6, :cond_71

    .line 564
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v1

    :cond_71
    if-eqz v1, :cond_74

    goto :goto_92

    .line 568
    :cond_74
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p1, -0x7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Existing package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " signatures do not match newer version; ignoring!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_91
    move v5, v2

    :goto_92
    if-eqz p1, :cond_18a

    .line 575
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    sget-object p2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq p0, p2, :cond_18a

    .line 582
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 581
    invoke-static {p3, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result p0

    .line 587
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p2

    if-nez p0, :cond_c1

    .line 588
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p6

    if-ne p6, v3, :cond_c1

    .line 589
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_c1

    move p0, v3

    :cond_c1
    if-nez p0, :cond_cb

    if-eqz p4, :cond_cb

    .line 593
    iget-object p0, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, p0, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z

    move-result p0

    :cond_cb
    const/4 p4, 0x2

    if-nez p0, :cond_ea

    if-eqz p5, :cond_ea

    .line 597
    iget-object p0, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 598
    invoke-static {v0, p0, p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-nez p0, :cond_e6

    iget-object p0, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 602
    invoke-static {v0, p3, p0, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_e5

    goto :goto_e6

    :cond_e5
    move v3, v2

    :cond_e6
    :goto_e6
    or-int p0, v5, v3

    move v5, p0

    move p0, v3

    :cond_ea
    const-string p5, "Package "

    const/4 p6, -0x8

    if-eqz p0, :cond_166

    .line 618
    invoke-virtual {p3}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p0

    if-eqz p0, :cond_141

    .line 619
    :goto_f5
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-ge v2, p0, :cond_141

    .line 620
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 624
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10c

    goto :goto_13e

    .line 628
    :cond_10c
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 631
    invoke-virtual {p3, v1}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 632
    invoke-virtual {p3, v1, p4}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-eqz v1, :cond_11d

    goto :goto_13e

    .line 634
    :cond_11d
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " revoked the sharedUserId capability from the signing key used to sign "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p6, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_13e
    :goto_13e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f5

    .line 646
    :cond_141
    iget-object p0, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p3, p0}, Landroid/content/pm/SigningDetails;->hasCommonAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_14c

    goto :goto_18a

    .line 648
    :cond_14c
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has a signing lineage that diverges from the lineage of the sharedUserId"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 609
    :cond_166
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " has no signatures that match those in shared user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_18a
    :goto_18a
    return v5
.end method

.method public static waitForNativeBinariesExtractionForIncremental(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/os/incremental/IncrementalStorage;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "native_lib_extract"

    .line 711
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    .line 720
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 721
    :goto_12
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 722
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/incremental/IncrementalStorage;

    .line 723
    invoke-virtual {v2}, Landroid/os/incremental/IncrementalStorage;->waitForNativeBinariesExtraction()Z
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_2c

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 726
    :cond_24
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 727
    throw p0
.end method
