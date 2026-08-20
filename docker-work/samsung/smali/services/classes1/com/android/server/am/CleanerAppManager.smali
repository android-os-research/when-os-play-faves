.class public Lcom/android/server/am/CleanerAppManager;
.super Ljava/lang/Object;
.source "CleanerAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CleanerAppManager$CleanerAppLog;,
        Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;,
        Lcom/android/server/am/CleanerAppManager$CleanerAppManagerLazyHolder;
    }
.end annotation


# static fields
.field public static final AD_ACTIVITY:Ljava/lang/String; = "com.google.android.gms.ads.AdActivity"

.field public static final SCORE_CLEANER_APP:I = 0x14

.field public static final TAG:Ljava/lang/String; = "CleanerAppManager"


# instance fields
.field public final mActiveTopCleanerApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public final mCleanerAppLogs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/CleanerAppManager$CleanerAppLog;",
            ">;"
        }
    .end annotation
.end field

.field public final mCleanerApps:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mLastCheckedTime:J


# direct methods
.method public static synthetic $r8$lambda$DABUVSDR9U2GiE_DJalBw5ATUp4(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/CleanerAppManager;->lambda$calculateTopCleanerApps$2(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LXYdSvd1fbVHXU2uTySzfmkQqmM(JJLcom/android/server/am/CleanerAppManager$CleanerAppLog;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/CleanerAppManager;->lambda$getCleanerAppLogCountByTime$1(JJLcom/android/server/am/CleanerAppManager$CleanerAppLog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fKIGk6Y-ou4K7kLrz-kx8fKxipo(Ljava/lang/String;Lcom/android/server/am/CleanerAppManager$CleanerAppLog;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/CleanerAppManager;->lambda$getCleanerAppLogCount$0(Ljava/lang/String;Lcom/android/server/am/CleanerAppManager$CleanerAppLog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lj6HN2TUm1e3AEcJMZpMOxKzLJU(Lcom/android/server/am/CleanerAppManager;Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/CleanerAppManager;->lambda$calculateTopCleanerApps$4(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zzJY-Y-YUZZZ97SvGxsiSjVQe4k(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/CleanerAppManager;->lambda$calculateTopCleanerApps$3(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCleanerAppLogs(Lcom/android/server/am/CleanerAppManager;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CleanerAppManager;->mCleanerAppLogs:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCleanerAppLogCount(Lcom/android/server/am/CleanerAppManager;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/CleanerAppManager;->getCleanerAppLogCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/server/am/CleanerAppManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object v0, p0, Lcom/android/server/am/CleanerAppManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 62
    iput-object v0, p0, Lcom/android/server/am/CleanerAppManager;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CleanerAppManager;->mCleanerApps:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lcom/android/server/am/CleanerAppManager;->mLastCheckedTime:J

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CleanerAppManager;->mActiveTopCleanerApps:Ljava/util/List;

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CleanerAppManager;->mCleanerAppLogs:Landroid/util/ArraySet;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CleanerAppManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/CleanerAppManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/CleanerAppManager;
    .registers 1

    .line 93
    sget-object v0, Lcom/android/server/am/CleanerAppManager$CleanerAppManagerLazyHolder;->INSTANCE:Lcom/android/server/am/CleanerAppManager;

    return-object v0
.end method

.method public static synthetic lambda$calculateTopCleanerApps$2(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)Z
    .registers 1

    .line 277
    invoke-static {p0}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetcurCount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static synthetic lambda$calculateTopCleanerApps$3(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I
    .registers 4

    .line 279
    invoke-static {p0}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetcurCount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetcurCount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result v1

    if-ne v0, v1, :cond_2e

    .line 280
    invoke-static {p0}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetcount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetcount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result v1

    if-ne v0, v1, :cond_24

    .line 281
    invoke-static {p1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetavgCount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)D

    move-result-wide v0

    invoke-static {p0}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetavgCount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, -0x1

    :goto_23
    return p0

    .line 283
    :cond_24
    invoke-static {p1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetcount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result p1

    invoke-static {p0}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetcount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result p0

    :goto_2c
    sub-int/2addr p1, p0

    return p1

    .line 286
    :cond_2e
    invoke-static {p1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetcurCount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result p1

    invoke-static {p0}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetcurCount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result p0

    goto :goto_2c
.end method

.method private synthetic lambda$calculateTopCleanerApps$4(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)V
    .registers 2

    .line 290
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/CleanerAppManager;->mActiveTopCleanerApps:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->clone()Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    .line 292
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method public static synthetic lambda$getCleanerAppLogCount$0(Ljava/lang/String;Lcom/android/server/am/CleanerAppManager$CleanerAppLog;)Z
    .registers 2

    .line 266
    invoke-static {p1}, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;->-$$Nest$fgetpackageName(Lcom/android/server/am/CleanerAppManager$CleanerAppLog;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getCleanerAppLogCountByTime$1(JJLcom/android/server/am/CleanerAppManager$CleanerAppLog;)Z
    .registers 7

    .line 271
    invoke-static {p4}, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;->-$$Nest$fgettimestamp(Lcom/android/server/am/CleanerAppManager$CleanerAppLog;)J

    move-result-wide v0

    sub-long/2addr p0, v0

    cmp-long p0, p0, p2

    if-gtz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method


# virtual methods
.method public final calculateTopCleanerApps()V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/android/server/am/CleanerAppManager;->mActiveTopCleanerApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 276
    iget-object v0, p0, Lcom/android/server/am/CleanerAppManager;->mCleanerApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda1;-><init>()V

    .line 277
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda2;-><init>()V

    .line 278
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 288
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/CleanerAppManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CleanerAppManager;->mLastCheckedTime:J

    return-void
.end method

.method public dumpCleanerApps(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const-string p1, "ACTIVITY MANAGER CLEANER APPS INFO (dumpsys activity cleaners)"

    .line 242
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcom/android/server/am/CleanerAppManager;->mCleanerApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p3, "  Cleaner Apps:"

    .line 245
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p3, ": "

    const-string v2, "    #"

    const/4 v3, 0x0

    if-lez p1, :cond_3b

    move v4, v3

    :goto_1f
    if-ge v4, p1, :cond_3b

    .line 248
    iget-object v5, p0, Lcom/android/server/am/CleanerAppManager;->mCleanerApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;

    .line 249
    invoke-static {v5, v0, v1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$mupdate(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;J)V

    .line 250
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 254
    :cond_3b
    iget-object p1, p0, Lcom/android/server/am/CleanerAppManager;->mActiveTopCleanerApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_71

    const-string p1, " Cached TOP cleaner apps dur="

    .line 255
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    iget-wide v4, p0, Lcom/android/server/am/CleanerAppManager;->mLastCheckedTime:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    :goto_52
    iget-object p1, p0, Lcom/android/server/am/CleanerAppManager;->mActiveTopCleanerApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_71

    .line 258
    iget-object p1, p0, Lcom/android/server/am/CleanerAppManager;->mActiveTopCleanerApps:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;

    .line 259
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_52

    :cond_71
    return-void
.end method

.method public final getCleanerAppLogCount(Ljava/lang/String;)I
    .registers 3

    .line 266
    iget-object p0, p0, Lcom/android/server/am/CleanerAppManager;->mCleanerAppLogs:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public final getCleanerAppLogCountByTime(J)I
    .registers 6

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 271
    iget-object p0, p0, Lcom/android/server/am/CleanerAppManager;->mCleanerAppLogs:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda4;-><init>(JJ)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/appop/AppOpsService;)V
    .registers 4

    .line 97
    iput-object p1, p0, Lcom/android/server/am/CleanerAppManager;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/server/am/CleanerAppManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 99
    iput-object p3, p0, Lcom/android/server/am/CleanerAppManager;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    return-void
.end method

.method public isCleanerApp(Ljava/lang/String;IILandroid/content/Intent;)Z
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v1, p3

    .line 105
    iget-object v2, v0, Lcom/android/server/am/CleanerAppManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    if-nez v2, :cond_e

    return v11

    :cond_e
    const/16 v3, 0x2710

    if-ge v10, v3, :cond_13

    return v11

    .line 109
    :cond_13
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManagerInternal;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v11

    :cond_1e
    const/4 v12, 0x1

    if-eqz p4, :cond_33

    .line 118
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    move v13, v12

    goto :goto_34

    :cond_33
    move v13, v11

    .line 121
    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AI "

    const-string v5, "AI! "

    if-eqz v13, :cond_46

    move-object v6, v4

    goto :goto_47

    :cond_46
    move-object v6, v5

    :goto_47
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    iget-object v6, v0, Lcom/android/server/am/CleanerAppManager;->mCleanerApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;

    const/16 v14, 0x14

    const-string v15, ")"

    const/16 v8, 0xa

    if-eqz v6, :cond_e4

    .line 125
    invoke-static {v6}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetscore(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result v7

    if-lt v7, v14, :cond_e4

    .line 127
    invoke-virtual {v6}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->addCallingCount()V

    .line 129
    invoke-static {v6}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetmPermString(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 130
    invoke-static {v6}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetmPermString(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fputmPermString(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;Ljava/lang/String;)V

    .line 131
    invoke-static {v6}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetscore(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-static {v6, v1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fputscore(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;I)V

    .line 134
    :cond_8b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/am/CleanerAppManager;->mLastCheckedTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-lez v1, :cond_be

    const-wide/32 v1, 0xea60

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/CleanerAppManager;->getCleanerAppLogCountByTime(J)I

    move-result v1

    if-le v1, v8, :cond_be

    .line 137
    sget-object v2, Lcom/android/server/am/CleanerAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OVERLOAD("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/CleanerAppManager;->calculateTopCleanerApps()V

    .line 141
    :cond_be
    sget-object v0, Lcom/android/server/am/CleanerAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fgetscore(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 149
    :cond_e4
    :try_start_e4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v6, 0x80

    iget-object v4, v0, Lcom/android/server/am/CleanerAppManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 150
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserId()I

    move-result v4

    .line 149
    invoke-interface {v5, v9, v6, v7, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_f4
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_f4} :catch_106

    .line 151
    :try_start_f4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 152
    invoke-interface {v5, v9, v11}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_100} :catch_107

    move-object/from16 v23, v5

    move-object v5, v4

    move-object/from16 v4, v23

    goto :goto_109

    :catch_106
    const/4 v4, 0x0

    :catch_107
    move-object v5, v4

    const/4 v4, 0x0

    :goto_109
    if-eqz v4, :cond_114

    .line 157
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_114

    move/from16 v16, v12

    goto :goto_116

    :cond_114
    move/from16 v16, v11

    .line 160
    :goto_116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_123

    const-string v2, "I "

    goto :goto_125

    :cond_123
    const-string v2, "I! "

    :goto_125
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-object v4, v0, Lcom/android/server/am/CleanerAppManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v4, v6, v1, v10}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_139

    move/from16 v17, v12

    goto :goto_13b

    :cond_139
    move/from16 v17, v11

    .line 169
    :goto_13b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_148

    const-string v2, "K "

    goto :goto_14a

    :cond_148
    const-string v2, "K! "

    :goto_14a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v5, :cond_154

    goto :goto_15c

    .line 173
    :cond_154
    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.google.android.gms.ads.APPLICATION_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    :goto_15c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_165

    :goto_162
    move/from16 v18, v12

    goto :goto_172

    .line 176
    :cond_165
    iget-object v3, v0, Lcom/android/server/am/CleanerAppManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "com.google.android.gms.permission.AD_ID"

    invoke-virtual {v3, v4, v1, v10}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_170

    goto :goto_162

    :cond_170
    move/from16 v18, v11

    .line 180
    :goto_172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v18, :cond_17f

    const-string v2, "A "

    goto :goto_181

    :cond_17f
    const-string v2, "A! "

    :goto_181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    iget-object v3, v0, Lcom/android/server/am/CleanerAppManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v3, v4, v1, v10}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_195

    move/from16 v19, v12

    goto :goto_197

    :cond_195
    move/from16 v19, v11

    .line 188
    :goto_197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v19, :cond_1a4

    const-string v2, "B "

    goto :goto_1a6

    :cond_1a4
    const-string v2, "B! "

    :goto_1a6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    iget-object v3, v0, Lcom/android/server/am/CleanerAppManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.FOREGROUND_SERVICE"

    invoke-virtual {v3, v4, v1, v10}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1ba

    move/from16 v20, v12

    goto :goto_1bc

    :cond_1ba
    move/from16 v20, v11

    .line 196
    :goto_1bc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v20, :cond_1c9

    const-string v2, "F "

    goto :goto_1cb

    :cond_1c9
    const-string v2, "F! "

    :goto_1cb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 200
    iget-object v1, v0, Lcom/android/server/am/CleanerAppManager;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 v2, 0x2b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v21, 0x0

    const-string v22, ""

    move/from16 v3, p2

    move-object/from16 v4, p1

    move-object v11, v7

    move-object/from16 v7, v22

    move/from16 v22, v8

    move/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1

    if-nez v1, :cond_1f3

    move v1, v12

    goto :goto_1f4

    :cond_1f3
    const/4 v1, 0x0

    .line 205
    :goto_1f4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_201

    const-string v3, "U "

    goto :goto_203

    :cond_201
    const-string v3, "U! "

    :goto_203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_20f

    move/from16 v8, v22

    goto :goto_210

    :cond_20f
    const/4 v8, 0x0

    :goto_210
    if-eqz v17, :cond_214

    add-int/lit8 v8, v8, 0xa

    :cond_214
    if-eqz v18, :cond_218

    add-int/lit8 v8, v8, 0xa

    :cond_218
    if-eqz v13, :cond_21c

    add-int/lit8 v8, v8, 0xa

    :cond_21c
    if-eqz v19, :cond_220

    add-int/lit8 v8, v8, 0x5

    :cond_220
    if-eqz v20, :cond_224

    add-int/lit8 v8, v8, 0x5

    :cond_224
    if-eqz v1, :cond_228

    add-int/lit8 v8, v8, 0x5

    .line 224
    :cond_228
    sget-object v1, Lcom/android/server/am/CleanerAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v8, v14, :cond_271

    .line 227
    iget-object v1, v0, Lcom/android/server/am/CleanerAppManager;->mCleanerApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;

    if-nez v1, :cond_267

    .line 229
    new-instance v1, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;

    invoke-direct {v1, v0, v9, v10}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;-><init>(Lcom/android/server/am/CleanerAppManager;Ljava/lang/String;I)V

    .line 230
    iget-object v0, v0, Lcom/android/server/am/CleanerAppManager;->mCleanerApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_267
    invoke-static {v1, v2}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fputmPermString(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;Ljava/lang/String;)V

    .line 233
    invoke-static {v1, v8}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->-$$Nest$fputscore(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;I)V

    .line 234
    invoke-virtual {v1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->addCallingCount()V

    return v12

    :cond_271
    const/4 v0, 0x0

    return v0
.end method
