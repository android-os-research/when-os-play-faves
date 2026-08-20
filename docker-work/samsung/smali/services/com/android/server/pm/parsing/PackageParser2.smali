.class public Lcom/android/server/pm/parsing/PackageParser2;
.super Ljava/lang/Object;
.source "PackageParser2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/PackageParser2$Callback;
    }
.end annotation


# static fields
.field public static final LOG_PARSE_TIMINGS:Z

.field public static final LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field public static final TAG:Ljava/lang/String; = "PackageParsing"


# instance fields
.field public mCacher:Lcom/android/server/pm/parsing/PackageCacher;

.field public mSharedAppInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSharedResult:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/pm/parsing/result/ParseTypeImpl;",
            ">;"
        }
    .end annotation
.end field

.field public parsingUtils:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;


# direct methods
.method public static synthetic $r8$lambda$Cj4GVgvNLY55VZy61p7qPlNAEvg(Lcom/android/server/pm/parsing/PackageParser2;Lcom/android/server/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/parsing/PackageParser2;->lambda$new$1(Lcom/android/server/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TyuePyUPnrrxyGine9B9PVPKaBM()Landroid/content/pm/ApplicationInfo;
    .registers 1

    invoke-static {}, Lcom/android/server/pm/parsing/PackageParser2;->lambda$new$0()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$wJ5RQfmA6u_C5mkZkTAKrvEySIo(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/parsing/PackageParser2;->lambda$new$2(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 94
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V
    .registers 12

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda0;-><init>()V

    .line 98
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    if-nez p3, :cond_18

    .line 119
    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 120
    invoke-virtual {p3}, Landroid/util/DisplayMetrics;->setToDefaults()V

    :cond_18
    move-object v3, p3

    .line 123
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p3

    const-class v0, Landroid/permission/PermissionManager;

    .line 124
    invoke-virtual {p3, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/permission/PermissionManager;

    .line 126
    invoke-virtual {p3}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v4

    if-nez p4, :cond_2d

    const/4 p3, 0x0

    goto :goto_32

    .line 128
    :cond_2d
    new-instance p3, Lcom/android/server/pm/parsing/PackageCacher;

    invoke-direct {p3, p4}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    :goto_32
    iput-object p3, p0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    .line 130
    new-instance p3, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;

    move-object v0, p3

    move v1, p2

    move-object v2, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;-><init>(Z[Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    iput-object p3, p0, Lcom/android/server/pm/parsing/PackageParser2;->parsingUtils:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;

    .line 133
    new-instance p1, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p5}, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    .line 141
    new-instance p2, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    invoke-static {p2}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static forParsingFileWithDefaults()Lcom/android/server/pm/parsing/PackageParser2;
    .registers 8

    const-string/jumbo v0, "platform_compat"

    .line 67
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 68
    new-instance v7, Lcom/android/server/pm/parsing/PackageParser2;

    new-instance v6, Lcom/android/server/pm/parsing/PackageParser2$1;

    invoke-direct {v6, v0}, Lcom/android/server/pm/parsing/PackageParser2$1;-><init>(Lcom/android/internal/compat/IPlatformCompat;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    return-object v7
.end method

.method public static synthetic lambda$new$0()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 99
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    const/4 v1, -0x1

    .line 100
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return-object v0
.end method

.method private synthetic lambda$new$1(Lcom/android/server/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z
    .registers 6

    .line 134
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    .line 136
    iput-object p4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 137
    iput p5, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 138
    invoke-virtual {p1, p2, p3, p0}, Lcom/android/server/pm/parsing/PackageParser2$Callback;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$2(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;
    .registers 2

    .line 141
    new-instance v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-direct {v0, p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 204
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZLjava/util/List;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    return-object p0
.end method

.method public parsePackage(Ljava/io/File;IZLjava/util/List;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "IZ",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/android/server/pm/parsing/pkg/ParsedPackage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    if-eqz p3, :cond_d

    .line 159
    iget-object p3, p0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    if-eqz p3, :cond_d

    .line 160
    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCachedResult(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p3

    if-eqz p3, :cond_d

    return-object p3

    .line 166
    :cond_d
    sget-boolean p3, Lcom/android/server/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    goto :goto_19

    :cond_18
    move-wide v2, v0

    .line 167
    :goto_19
    iget-object v4, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-virtual {v4}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v4

    .line 168
    iget-object v5, p0, Lcom/android/server/pm/parsing/PackageParser2;->parsingUtils:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;

    invoke-virtual {v5, v4, p1, p2, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p4

    .line 170
    invoke-interface {p4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-nez v4, :cond_88

    .line 175
    invoke-interface {p4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    if-eqz p3, :cond_43

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 178
    :cond_43
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    if-eqz p0, :cond_4a

    .line 179
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/parsing/PackageCacher;->cacheResult(Ljava/io/File;ILcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    :cond_4a
    if-eqz p3, :cond_87

    sub-long p2, v0, v2

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    add-long v0, p2, v2

    const-wide/16 v4, 0x64

    cmp-long p0, v0, v4

    if-lez p0, :cond_87

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parse times for \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\': parse="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms, update_cache="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageParsing"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    return-object p4

    .line 171
    :cond_88
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {p4}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p1

    invoke-interface {p4}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-interface {p4}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
