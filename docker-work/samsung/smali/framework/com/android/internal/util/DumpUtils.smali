.class public final Lcom/android/internal/util/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/DumpUtils$Dump;
    }
.end annotation


# static fields
.field public static final blacklist CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DumpUtils"


# direct methods
.method public static synthetic blacklist $r8$lambda$DiTyg9s5LrO9J2v6Mv70kIum9qE(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/util/DumpUtils;->isSecMediaPackage(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/util/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static blacklist checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 170
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 95
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " due to missing android.permission.DUMP permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {p2, v0}, Lcom/android/internal/util/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_42
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 117
    .local v0, "uid":I
    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_a4

    .line 126
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string v3, ", uid="

    const-string v4, " from from pid="

    const-string v5, "Permission Denial: can\'t dump "

    const/4 v6, 0x0

    if-eqz v2, :cond_4b

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to missing android.permission.PACKAGE_USAGE_STATS permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {p2, v1}, Lcom/android/internal/util/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 131
    return v6

    .line 122
    :sswitch_4a
    return v1

    .line 137
    :cond_4b
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 138
    .local v2, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "pkgs":[Ljava/lang/String;
    if-eqz v7, :cond_71

    .line 140
    array-length v8, v7

    move v9, v6

    :goto_5f
    if-ge v9, v8, :cond_71

    aget-object v10, v7, v9

    .line 141
    .local v10, "pkg":Ljava/lang/String;
    const/16 v11, 0x2b

    invoke-virtual {v2, v11, v0, v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v11

    sparse-switch v11, :sswitch_data_b6

    .line 140
    .end local v10    # "pkg":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_5f

    .line 149
    .restart local v10    # "pkg":Ljava/lang/String;
    :sswitch_6f
    return v1

    .line 145
    :sswitch_70
    return v1

    .line 154
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " due to android:get_usage_stats app-op not allowed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {p2, v1}, Lcom/android/internal/util/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 157
    return v6

    :sswitch_data_a4
    .sparse-switch
        0x0 -> :sswitch_4a
        0x3e8 -> :sswitch_4a
        0x42b -> :sswitch_4a
        0x7d0 -> :sswitch_4a
    .end sparse-switch

    :sswitch_data_b6
    .sparse-switch
        0x0 -> :sswitch_70
        0x3 -> :sswitch_6f
    .end sparse-switch
.end method

.method public static blacklist dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 8
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "dump"    # Lcom/android/internal/util/DumpUtils$Dump;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "timeout"    # J

    .line 64
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 65
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/DumpUtils$1;

    invoke-direct {v1, v0, p1, p3}, Lcom/android/internal/util/DumpUtils$1;-><init>(Ljava/io/StringWriter;Lcom/android/internal/util/DumpUtils$Dump;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p4, p5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 73
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1d

    .line 75
    :cond_18
    const-string v1, "... timed out"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    :goto_1d
    return-void
.end method

.method public static blacklist filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 4
    .param p0, "filterString"    # Ljava/lang/String;
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
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda0;-><init>()V

    return-object v0

    .line 320
    :cond_c
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 321
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda1;-><init>()V

    return-object v0

    .line 325
    :cond_1a
    const-string v0, "all-platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 326
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda2;-><init>()V

    return-object v0

    .line 330
    :cond_28
    const-string v0, "all-non-platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 331
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda3;-><init>()V

    return-object v0

    .line 335
    :cond_36
    const-string v0, "all-platform-critical"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 336
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda4;-><init>()V

    return-object v0

    .line 340
    :cond_44
    const-string v0, "all-platform-non-critical"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 341
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda5;-><init>()V

    return-object v0

    .line 346
    :cond_52
    const-string/jumbo v0, "samsung-media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 347
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda6;-><init>()V

    return-object v0

    .line 352
    :cond_61
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 353
    .local v0, "filterCname":Landroid/content/ComponentName;
    if-eqz v0, :cond_6d

    .line 355
    new-instance v1, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda7;-><init>(Landroid/content/ComponentName;)V

    return-object v1

    .line 360
    :cond_6d
    const/16 v1, 0x10

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v1

    .line 361
    .local v1, "id":I
    new-instance v2, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1, p0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda8;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private static blacklist isCriticalPackage(Landroid/content/ComponentName;)Z
    .registers 5
    .param p0, "cname"    # Landroid/content/ComponentName;

    .line 273
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 274
    return v0

    .line 277
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget-object v2, Lcom/android/internal/util/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 278
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 279
    const/4 v0, 0x1

    return v0

    .line 277
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 282
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method public static blacklist isNonPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2
    .param p0, "wcn"    # Landroid/content/ComponentName$WithComponentName;

    .line 264
    if-eqz p0, :cond_18

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 265
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isSecMediaPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 264
    :goto_19
    return v0
.end method

.method public static blacklist isNonPlatformPackage(Landroid/content/ComponentName;)Z
    .registers 2
    .param p0, "cname"    # Landroid/content/ComponentName;

    .line 251
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isNonPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 252
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isSecMediaPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 251
    :goto_19
    return v0
.end method

.method public static blacklist isNonPlatformPackage(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 238
    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 239
    invoke-static {p0}, Lcom/android/internal/util/DumpUtils;->isSecMediaPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 238
    :goto_11
    return v0
.end method

.method public static blacklist isPlatformCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2
    .param p0, "wcn"    # Landroid/content/ComponentName$WithComponentName;

    .line 292
    if-eqz p0, :cond_18

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 293
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 292
    :goto_19
    return v0
.end method

.method public static blacklist isPlatformNonCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2
    .param p0, "wcn"    # Landroid/content/ComponentName$WithComponentName;

    .line 304
    if-eqz p0, :cond_18

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 305
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 304
    :goto_19
    return v0
.end method

.method public static blacklist isPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2
    .param p0, "wcn"    # Landroid/content/ComponentName$WithComponentName;

    .line 197
    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist isPlatformPackage(Landroid/content/ComponentName;)Z
    .registers 2
    .param p0, "cname"    # Landroid/content/ComponentName;

    .line 189
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist isPlatformPackage(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 178
    if-eqz p0, :cond_1c

    .line 179
    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 180
    const-string v0, "android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 181
    const-string v0, "com.android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 178
    :goto_1d
    return v0
.end method

.method private static blacklist isSecMediaPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2
    .param p0, "wcn"    # Landroid/content/ComponentName$WithComponentName;

    .line 226
    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isSecMediaPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist isSecMediaPackage(Landroid/content/ComponentName;)Z
    .registers 2
    .param p0, "cname"    # Landroid/content/ComponentName;

    .line 218
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isSecMediaPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist isSecMediaPackage(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 206
    if-eqz p0, :cond_24

    .line 207
    const-string v0, "com.google.android.providers.media.module"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 208
    const-string v0, "com.samsung.android.providers.media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 209
    const-string v0, "com.sec.android.app.myfiles"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 210
    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 206
    :goto_25
    return v0
.end method

.method static synthetic blacklist lambda$filterRecord$0(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2
    .param p0, "rec"    # Landroid/content/ComponentName$WithComponentName;

    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$filterRecord$1(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z
    .registers 3
    .param p0, "filterCname"    # Landroid/content/ComponentName;
    .param p1, "rec"    # Landroid/content/ComponentName$WithComponentName;

    .line 355
    if-eqz p1, :cond_e

    invoke-interface {p1}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic blacklist lambda$filterRecord$2(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z
    .registers 6
    .param p0, "id"    # I
    .param p1, "filterString"    # Ljava/lang/String;
    .param p2, "rec"    # Landroid/content/ComponentName$WithComponentName;

    .line 362
    invoke-interface {p2}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 363
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, -0x1

    if-eq p0, v1, :cond_d

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p0, :cond_1f

    .line 364
    :cond_d
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_1f
    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 363
    :goto_22
    return v1
.end method

.method private static blacklist logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    return-void
.end method
