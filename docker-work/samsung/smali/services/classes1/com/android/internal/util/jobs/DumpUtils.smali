.class public final Lcom/android/internal/util/jobs/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/jobs/DumpUtils$Dump;
    }
.end annotation


# static fields
.field public static final CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "DumpUtils"


# direct methods
.method public static synthetic $r8$lambda$07Bkw0P8j5YmFxqdq8G3dznbu-E(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/DumpUtils;->lambda$filterRecord$1(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5q4rK7WoDLXH4L8gqphcrMNOrwU(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->lambda$filterRecord$2(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RQ001XcLCiz5AgjQDz2-s62L4_s(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->lambda$filterRecord$0(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VLwsL56F3aX-bNxCL2qa5187534(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    .line 46
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/util/jobs/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4

    .line 170
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4

    const-string v0, "android.permission.DUMP"

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3b

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: can\'t dump "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " due to missing android.permission.DUMP permission"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p2, p0}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method

.method public static checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 14

    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a1

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_a1

    const/16 v2, 0x42b

    if-eq v0, v2, :cond_a1

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_a1

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    .line 126
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string v3, ", uid="

    const-string v4, " from from pid="

    const-string v5, "Permission Denial: can\'t dump "

    const/4 v6, 0x0

    if-eqz v2, :cond_4e

    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " due to missing android.permission.PACKAGE_USAGE_STATS permission"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-static {p2, p0}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v6

    .line 137
    :cond_4e
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_75

    .line 140
    array-length v7, p0

    move v8, v6

    :goto_62
    if-ge v8, v7, :cond_75

    aget-object v9, p0, v8

    const/16 v10, 0x2b

    .line 141
    invoke-virtual {v2, v10, v0, v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_74

    const/4 v10, 0x3

    if-eq v9, v10, :cond_74

    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    :cond_74
    return v1

    .line 154
    :cond_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " due to android:get_usage_stats app-op not allowed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-static {p2, p0}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v6

    :cond_a1
    return v1
.end method

.method public static dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 8

    .line 64
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 65
    new-instance v1, Lcom/android/internal/util/jobs/DumpUtils$1;

    invoke-direct {v1, v0, p1, p3}, Lcom/android/internal/util/jobs/DumpUtils$1;-><init>(Ljava/io/StringWriter;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p4, p5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 73
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1d

    :cond_18
    const-string p0, "... timed out"

    .line 75
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method public static filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRec::",
            "Landroid/content/ComponentName$WithComponentName;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "TTRec;>;"
        }
    .end annotation

    .line 315
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 316
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda0;-><init>()V

    return-object p0

    :cond_c
    const-string v0, "all"

    .line 320
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 321
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;-><init>()V

    return-object p0

    :cond_1a
    const-string v0, "all-platform"

    .line 325
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 326
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;-><init>()V

    return-object p0

    :cond_28
    const-string v0, "all-non-platform"

    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 331
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda3;-><init>()V

    return-object p0

    :cond_36
    const-string v0, "all-platform-critical"

    .line 335
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 336
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;-><init>()V

    return-object p0

    :cond_44
    const-string v0, "all-platform-non-critical"

    .line 340
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 341
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda5;-><init>()V

    return-object p0

    :cond_52
    const-string/jumbo v0, "samsung-media"

    .line 346
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 347
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda6;-><init>()V

    return-object p0

    .line 352
    :cond_61
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 355
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda7;

    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda7;-><init>(Landroid/content/ComponentName;)V

    return-object p0

    :cond_6d
    const/16 v0, 0x10

    const/4 v1, -0x1

    .line 360
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/jobs/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v0

    .line 361
    new-instance v1, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda8;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public static isCriticalPackage(Landroid/content/ComponentName;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    move v1, v0

    .line 277
    :goto_5
    sget-object v2, Lcom/android/internal/util/jobs/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 278
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return v0
.end method

.method public static isNonPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2

    if-eqz p0, :cond_18

    .line 264
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 265
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static isNonPlatformPackage(Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p0, :cond_18

    .line 251
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isNonPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 252
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static isNonPlatformPackage(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_10

    .line 238
    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 239
    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static isPlatformCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2

    if-eqz p0, :cond_18

    .line 292
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 293
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static isPlatformNonCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2

    if-eqz p0, :cond_18

    .line 304
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 305
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static isPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 197
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isPlatformPackage(Landroid/content/ComponentName;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 189
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isPlatformPackage(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_1c

    const-string v0, "android"

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "android."

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.android."

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public static isSecMediaPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 226
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isSecMediaPackage(Landroid/content/ComponentName;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 218
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isSecMediaPackage(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_24

    const-string v0, "com.google.android.providers.media.module"

    .line 207
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "com.samsung.android.providers.media"

    .line 208
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "com.sec.android.app.myfiles"

    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "com.sec.android.gallery3d"

    .line 210
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public static synthetic lambda$filterRecord$0(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$filterRecord$1(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 355
    invoke-interface {p1}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$filterRecord$2(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z
    .registers 5

    .line 362
    invoke-interface {p2}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_d

    .line 363
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, p0, :cond_1f

    .line 364
    :cond_d
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_1f
    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method

.method public static logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
