.class public final Lcom/android/server/pm/verify/domain/DomainVerificationUtils;
.super Ljava/lang/Object;
.source "DomainVerificationUtils.java"


# static fields
.field public static final sCachedMatcher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/regex/Matcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QRJ8rMpaFaI6JUONuc9XWQqiJNE()Ljava/util/regex/Matcher;
    .registers 1

    invoke-static {}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->lambda$static$0()Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildMockAppInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 106
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 107
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 108
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return-object v0
.end method

.method public static isChangeEnabled(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z
    .registers 4

    .line 94
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->buildMockAppInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public static isDomainVerificationIntent(Landroid/content/Intent;J)Z
    .registers 11

    .line 53
    invoke-virtual {p0}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 57
    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v1

    .line 62
    :cond_17
    sget-object v2, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Matcher;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2a

    return v1

    .line 66
    :cond_2a
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_36

    return v1

    :cond_36
    const-string v3, "android.intent.category.BROWSABLE"

    const/4 v4, 0x1

    const-string v5, "android.intent.category.DEFAULT"

    if-ne v0, v2, :cond_4b

    .line 73
    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 74
    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4a

    move v1, v4

    :cond_4a
    return v1

    :cond_4b
    const-wide/32 v6, 0x10000

    and-long/2addr p1, v6

    const-wide/16 v6, 0x0

    cmp-long p1, p1, v6

    if-eqz p1, :cond_56

    move v1, v4

    :cond_56
    if-nez v0, :cond_59

    return v1

    .line 83
    :cond_59
    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_60

    return v1

    .line 88
    :cond_60
    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$static$0()Ljava/util/regex/Matcher;
    .registers 2

    .line 39
    sget-object v0, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " unavailable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
