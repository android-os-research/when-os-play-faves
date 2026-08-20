.class public Lcom/android/server/usage/StorageStatsService;
.super Landroid/app/usage/IStorageStatsManager$Stub;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/StorageStatsService$LocalService;,
        Lcom/android/server/usage/StorageStatsService$H;,
        Lcom/android/server/usage/StorageStatsService$Lifecycle;
    }
.end annotation


# static fields
.field public static final DEFAULT_QUOTA:J

.field public static final DELAY_CHECK_STORAGE_DELTA:J = 0x7530L

.field public static final DELAY_RECALCULATE_QUOTAS:J = 0x2255100L

.field public static final PROP_DISABLE_QUOTA:Ljava/lang/String; = "fw.disable_quota"

.field public static final PROP_STORAGE_CRATES:Ljava/lang/String; = "fw.storage_crates"

.field public static final PROP_VERIFY_STORAGE:Ljava/lang/String; = "fw.verify_storage"

.field public static final TAG:Ljava/lang/String; = "StorageStatsService"


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mCacheQuotas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/usage/StorageStatsService$H;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mLock:Ljava/lang/Object;

.field public final mPackage:Landroid/content/pm/PackageManager;

.field public final mStorage:Landroid/os/storage/StorageManager;

.field public final mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;",
            ">;>;"
        }
    .end annotation
.end field

.field public mStorageThresholdPercentHigh:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUser:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$8jFBpvrf0onpjl2zYO7sAcHTVQk(Landroid/content/pm/PackageStats;IZLcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/usage/StorageStatsService;->lambda$queryStatsForUid$2(Landroid/content/pm/PackageStats;IZLcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e00sXR5LlKUEYmC3mUR12f351l0(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/usage/StorageStatsService;->lambda$queryStatsForUser$3(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sDuBEvXkUFmKJMZICtMN__APECU(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;ZLcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/usage/StorageStatsService;->lambda$queryStatsForPackage$1(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;ZLcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u42JqUxqS4Zdz9ELX89qNyRlDqc(Lcom/android/server/usage/StorageStatsService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usage/StorageStatsService;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCacheQuotas(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/usage/StorageStatsService$H;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstaller(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usage/StorageStatsService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStorageStatsAugmenters(Lcom/android/server/usage/StorageStatsService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStorageThresholdPercentHigh(Lcom/android/server/usage/StorageStatsService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$minvalidateMounts(Lcom/android/server/usage/StorageStatsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 104
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 139
    invoke-direct {p0}, Landroid/app/usage/IStorageStatsManager$Stub;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v0, 0x14

    .line 133
    iput v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    .line 140
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 141
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 142
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 144
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 145
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 147
    new-instance v2, Lcom/android/server/pm/Installer;

    invoke-direct {v2, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 148
    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->onStart()V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    .line 151
    new-instance p1, Lcom/android/server/usage/StorageStatsService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcom/android/server/usage/StorageStatsService$H;-><init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    const/16 v2, 0x65

    .line 152
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    new-instance p1, Lcom/android/server/usage/StorageStatsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/usage/StorageStatsService$1;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 168
    const-class p1, Lcom/android/server/usage/StorageStatsManagerLocal;

    new-instance v1, Lcom/android/server/usage/StorageStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/usage/StorageStatsService$LocalService;-><init>(Lcom/android/server/usage/StorageStatsService;Lcom/android/server/usage/StorageStatsService$LocalService-IA;)V

    invoke-static {p1, v1}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 170
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 171
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 172
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 173
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 174
    new-instance v1, Lcom/android/server/usage/StorageStatsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/usage/StorageStatsService$2;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService;->updateConfig()V

    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    const-string/jumbo p0, "storage_native_boot"

    .line 186
    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static checkCratesEnable()V
    .registers 2

    const-string v0, "fw.storage_crates"

    const/4 v1, 0x0

    .line 700
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 702
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Storage Crate feature is disabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkEquals(Ljava/lang/String;JJ)V
    .registers 6

    cmp-long v0, p1, p3

    if-eqz v0, :cond_25

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " expected "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " actual "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public static checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    .registers 8

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " codeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cacheSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalCodeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalDataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " externalCacheSize"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide p1, p2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static checkEquals(Ljava/lang/String;[J[J)V
    .registers 9

    const/4 v0, 0x0

    .line 540
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_27

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public static convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/storage/CrateMetadata;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 722
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 723
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 726
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 727
    array-length v1, p0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_3a

    aget-object v3, p0, v2

    if-eqz v3, :cond_37

    .line 728
    iget-object v4, v3, Landroid/os/storage/CrateMetadata;->id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, v3, Landroid/os/storage/CrateMetadata;->packageName:Ljava/lang/String;

    .line 729
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_37

    .line 733
    :cond_27
    iget v4, v3, Landroid/os/storage/CrateMetadata;->uid:I

    iget-object v5, v3, Landroid/os/storage/CrateMetadata;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/os/storage/CrateMetadata;->id:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/os/storage/CrateInfo;->copyFrom(ILjava/lang/String;Ljava/lang/String;)Landroid/os/storage/CrateInfo;

    move-result-object v3

    if-nez v3, :cond_34

    goto :goto_37

    .line 739
    :cond_34
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_3a
    return-object v0
.end method

.method public static getDefaultFlags()I
    .registers 2

    const-string v0, "fw.disable_quota"

    const/4 v1, 0x0

    .line 532
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x1000

    return v0
.end method

.method public static isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "enable_cache_quota_calculation"

    const/4 v1, 0x1

    .line 686
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 187
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService;->updateConfig()V

    return-void
.end method

.method public static synthetic lambda$queryStatsForPackage$1(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;ZLcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .registers 5

    .line 381
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForPackageForUser(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public static synthetic lambda$queryStatsForUid$2(Landroid/content/pm/PackageStats;IZLcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .registers 4

    .line 446
    invoke-interface {p3, p0, p1, p2}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V

    return-void
.end method

.method public static synthetic lambda$queryStatsForUser$3(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .registers 3

    .line 478
    invoke-interface {p2, p0, p1}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForUser(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;
    .registers 6

    .line 561
    new-instance v0, Landroid/app/usage/StorageStats;

    invoke-direct {v0}, Landroid/app/usage/StorageStats;-><init>()V

    .line 562
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 563
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 564
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 565
    iput-wide v3, v0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    return-object v0
.end method


# virtual methods
.method public final checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x2b

    if-eqz p3, :cond_b

    .line 217
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p3, v0, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p3

    goto :goto_11

    .line 219
    :cond_b
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p3, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p3

    :goto_11
    const/4 v0, 0x0

    if-eqz p3, :cond_5e

    const/4 v1, 0x3

    if-eq p3, v1, :cond_39

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from UID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " blocked by mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 225
    :cond_39
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_44

    return-object v0

    .line 229
    :cond_44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Caller does not have android.permission.PACKAGE_USAGE_STATS; callingPackage="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", callingUid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5e
    return-object v0
.end method

.method public final enforceCratesPermission(ILjava/lang/String;)V
    .registers 3

    .line 713
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_CRATES"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceStatsPermission(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-void

    .line 210
    :cond_8
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_41

    .line 851
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 852
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 853
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    .line 855
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 857
    :try_start_33
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3c

    .line 859
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catchall_3c
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 860
    throw p0

    :cond_41
    return-void
.end method

.method public final getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 749
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/Installer;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object p0

    .line 751
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-static {p0}, Lcom/android/server/usage/StorageStatsService;->convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    move-exception p0

    .line 753
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getAppIds(I)[I
    .registers 4

    .line 521
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v0, 0x2000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 523
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 524
    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_d

    .line 525
    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    goto :goto_d

    :cond_2a
    return-object p1
.end method

.method public getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 7

    .line 305
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 308
    iget-object p2, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v0, 0x0

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 309
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v2

    .line 310
    iget-wide v2, v2, Landroid/app/usage/StorageStats;->cacheBytes:J

    add-long/2addr v0, v2

    goto :goto_13

    :cond_2a
    return-wide v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 6

    .line 317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 319
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 320
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseLongArray;

    .line 321
    sget-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    invoke-virtual {p0, p2, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    return-wide p0

    .line 324
    :cond_1e
    sget-wide p0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-wide p0
.end method

.method public getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 10

    const-string p2, "android"

    .line 277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 281
    :try_start_6
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_c} :catch_37
    .catchall {:try_start_6 .. :try_end_c} :catchall_35

    .line 289
    :try_start_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/StorageStatsService;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/StorageStatsService;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 291
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    sub-long/2addr p1, v3

    .line 292
    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 294
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_35

    add-long/2addr v2, p0

    .line 299
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2

    .line 296
    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_35

    .line 299
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_35
    move-exception p0

    goto :goto_3e

    :catch_37
    move-exception p0

    .line 283
    :try_start_38
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_35

    .line 299
    :goto_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 300
    throw p0
.end method

.method public getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 5

    .line 261
    sget-object p2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne p1, p2, :cond_f

    .line 262
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide p0

    return-wide p0

    .line 264
    :cond_f
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 269
    iget-object p0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget-wide p0, p0, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p0, p1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide p0

    return-wide p0

    .line 266
    :cond_20
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find storage device for UUID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final invalidateMounts()V
    .registers 3

    .line 201
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->invalidateMounts()V
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string v0, "StorageStatsService"

    const-string v1, "Failed to invalidate mounts"

    .line 203
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 241
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Installer;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 243
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public isReservedSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 249
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 p2, 0x0

    if-ne p1, p0, :cond_13

    const-string/jumbo p0, "vold.has_reserved"

    .line 250
    invoke-static {p0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_12

    sget-boolean p0, Landroid/os/Build;->IS_ARC:Z

    if-eqz p0, :cond_13

    :cond_12
    const/4 p2, 0x1

    :cond_13
    return p2
.end method

.method public notifySignificantDelta()V
    .registers 4

    .line 695
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.android.externalstorage.documents/"

    .line 696
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 695
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return-void
.end method

.method public queryCratesForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 761
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 762
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_12

    .line 763
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1a} :catch_35

    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_23

    goto :goto_2a

    .line 778
    :cond_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p4}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    :goto_2a
    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    .line 782
    invoke-virtual {p0, p1, p4, p3}, Lcom/android/server/usage/StorageStatsService;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    :catch_35
    move-exception p0

    .line 772
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public queryCratesForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 789
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 790
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 791
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_16

    .line 792
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "StorageStatsService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, p2, :cond_1d

    goto :goto_24

    .line 799
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    .line 802
    :goto_24
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array v1, p3, [Ljava/lang/String;

    .line 805
    array-length v2, p2

    :goto_32
    if-ge p3, v2, :cond_5a

    aget-object v3, p2, p3

    .line 806
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_50

    .line 811
    :cond_3d
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    invoke-virtual {v4, v3, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_48

    goto :goto_50

    .line 817
    :cond_48
    const-class v4, Ljava/lang/String;

    invoke-static {v4, v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_50} :catch_53

    :goto_50
    add-int/lit8 p3, p3, 0x1

    goto :goto_32

    :catch_53
    move-exception p0

    .line 820
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 824
    :cond_5a
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/usage/StorageStatsService;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public queryCratesForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 831
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 832
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_12

    .line 833
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    .line 841
    :try_start_19
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Installer;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object p0

    .line 842
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-static {p0}, Lcom/android/server/usage/StorageStatsService;->convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_28
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_19 .. :try_end_28} :catch_29

    return-object p1

    :catch_29
    move-exception p0

    .line 844
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;
    .registers 7

    .line 487
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 488
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 495
    invoke-virtual {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object p3

    .line 498
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    const-string v1, "fw.verify_storage"

    const/4 v2, 0x0

    .line 500
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 501
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object p0

    .line 503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "External "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v0}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;[J[J)V
    :try_end_47
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1a .. :try_end_47} :catch_6a

    .line 509
    :cond_47
    new-instance p0, Landroid/app/usage/ExternalStorageStats;

    invoke-direct {p0}, Landroid/app/usage/ExternalStorageStats;-><init>()V

    .line 510
    aget-wide p1, v0, v2

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    const/4 p1, 0x1

    .line 511
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    const/4 p1, 0x2

    .line 512
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    const/4 p1, 0x3

    .line 513
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    const/4 p1, 0x4

    .line 514
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    const/4 p1, 0x5

    .line 515
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    return-object p0

    :catch_6a
    move-exception p0

    .line 506
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 20

    move-object v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v1, p4

    .line 330
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const-string v3, "StorageStatsService"

    if-eq v12, v2, :cond_18

    .line 331
    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_18
    :try_start_18
    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2000

    invoke-virtual {v2, v11, v4, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_20} :catch_ba

    .line 344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_39

    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 347
    invoke-virtual {p0, v4, v1, v6}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    move v4, v7

    goto :goto_37

    :cond_36
    move v4, v6

    :goto_37
    move v13, v4

    goto :goto_41

    .line 350
    :cond_39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    move v13, v7

    .line 354
    :goto_41
    iget-object v4, v0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ne v4, v7, :cond_57

    .line 356
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v10, v2, v1}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 359
    :cond_57
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    new-array v4, v7, [Ljava/lang/String;

    aput-object v11, v4, v6

    new-array v7, v7, [J

    new-array v1, v6, [Ljava/lang/String;

    .line 364
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v5

    if-nez v5, :cond_72

    goto :goto_7e

    .line 367
    :cond_72
    const-class v5, Ljava/lang/String;

    .line 368
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v5, v1, v2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_7e
    move-object v9, v1

    .line 371
    new-instance v14, Landroid/content/pm/PackageStats;

    invoke-direct {v14, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 373
    :try_start_84
    iget-object v1, v0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object v3, v4

    move/from16 v4, p3

    move v6, v8

    move-object v8, v9

    move-object v9, v14

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    :try_end_92
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_84 .. :try_end_92} :catch_aa

    .line 378
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne v10, v1, :cond_a5

    .line 379
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 380
    new-instance v2, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v14, v11, v1, v13}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    const-string/jumbo v1, "queryStatsForPackage"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 385
    :cond_a5
    invoke-static {v14}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    :catch_aa
    move-exception v0

    .line 376
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_ba
    move-exception v0

    .line 340
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 391
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 392
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 394
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const-string v13, "StorageStatsService"

    if-eq v11, v3, :cond_1d

    .line 395
    iget-object v3, v0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v3, v4, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x1

    const/4 v14, 0x0

    if-ne v3, v1, :cond_32

    .line 404
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 403
    invoke-virtual {v0, v3, v2, v14}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_39

    :cond_30
    move v4, v14

    goto :goto_39

    .line 406
    :cond_32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    :goto_39
    move v15, v4

    .line 410
    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 411
    array-length v2, v10

    new-array v9, v2, [J

    new-array v2, v14, [Ljava/lang/String;

    move-object v8, v2

    move v2, v14

    .line 414
    :goto_4b
    array-length v3, v10

    if-ge v2, v3, :cond_7c

    .line 416
    :try_start_4e
    iget-object v3, v0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    aget-object v4, v10, v2

    const/16 v5, 0x2000

    invoke-virtual {v3, v4, v5, v11}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 418
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v4

    if-nez v4, :cond_65

    goto :goto_72

    .line 421
    :cond_65
    const-class v4, Ljava/lang/String;

    .line 422
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v3

    .line 421
    invoke-static {v4, v8, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [Ljava/lang/String;
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4e .. :try_end_72} :catch_75

    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :catch_75
    move-exception v0

    .line 425
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 429
    :cond_7c
    new-instance v7, Landroid/content/pm/PackageStats;

    invoke-direct {v7, v13}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 431
    :try_start_81
    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v6

    move-object/from16 v3, p1

    move-object v4, v10

    move v5, v11

    move-object/from16 p3, v7

    move v7, v12

    move-object/from16 v16, v8

    move-object v8, v9

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    move-object/from16 v18, v10

    move-object/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    const-string v2, "fw.verify_storage"

    .line 434
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 435
    new-instance v14, Landroid/content/pm/PackageStats;

    invoke-direct {v14, v13}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 436
    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, v18

    move v5, v11

    move v7, v12

    move-object/from16 v8, v17

    move-object/from16 v9, v16

    move-object v10, v14

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-static {v2, v14, v3}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_d0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_81 .. :try_end_d0} :catch_e9

    goto :goto_d3

    :cond_d1
    move-object/from16 v3, p3

    .line 444
    :goto_d3
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v4, p1

    if-ne v4, v2, :cond_e4

    .line 445
    new-instance v2, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v3, v1, v15}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/PackageStats;IZ)V

    const-string/jumbo v1, "queryStatsForUid"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 449
    :cond_e4
    invoke-static {v3}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    :catch_e9
    move-exception v0

    .line 441
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 13

    .line 454
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "StorageStatsService"

    if-eq p2, v0, :cond_f

    .line 455
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 462
    invoke-virtual {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object p3

    .line 463
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 465
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v5

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    const-string v2, "fw.verify_storage"

    const/4 v3, 0x0

    .line 467
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 468
    new-instance v8, Landroid/content/pm/PackageStats;

    invoke-direct {v8, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 470
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v8, v0}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_58
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1f .. :try_end_58} :catch_70

    .line 475
    :cond_58
    sget-object p3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne p1, p3, :cond_6b

    .line 476
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 477
    new-instance p2, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0, p1}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V

    const-string/jumbo p1, "queryStatsForUser"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 481
    :cond_6b
    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object p0

    return-object p0

    :catch_70
    move-exception p0

    .line 473
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final updateConfig()V
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "storage_native_boot"

    const-string/jumbo v2, "storage_threshold_percent_high"

    const/16 v3, 0x14

    .line 192
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    .line 196
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method
