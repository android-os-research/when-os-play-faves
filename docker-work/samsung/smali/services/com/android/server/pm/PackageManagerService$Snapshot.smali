.class public Lcom/android/server/pm/PackageManagerService$Snapshot;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Snapshot"
.end annotation


# static fields
.field public static final LIVE:I = 0x1

.field public static final SNAPPED:I = 0x2


# instance fields
.field public final androidApplication:Landroid/content/pm/ApplicationInfo;

.field public final appPredictionServicePackage:Ljava/lang/String;

.field public final appsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

.field public final componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

.field public final frozenPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

.field public final instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

.field public final instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

.field public final instrumentation:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public final isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

.field public final packages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field public final resolveActivity:Landroid/content/pm/ActivityInfo;

.field public final resolveComponentName:Landroid/content/ComponentName;

.field public final service:Lcom/android/server/pm/PackageManagerService;

.field public final settings:Lcom/android/server/pm/Settings;

.field public final sharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field public final webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 5

    .line 1251
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_b5

    .line 1253
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p2}, Lcom/android/server/pm/Settings;->snapshot()Lcom/android/server/pm/Settings;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    .line 1254
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmIsolatedOwnersSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/utils/WatchedSparseIntArray;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 1255
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackagesSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1256
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmInstrumentationSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 1257
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    const/4 v0, 0x0

    if-nez p2, :cond_3b

    move-object p2, v0

    goto :goto_3f

    .line 1258
    :cond_3b
    invoke-virtual {p2}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object p2

    :goto_3f
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    .line 1259
    new-instance p2, Landroid/content/pm/ActivityInfo;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    .line 1261
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-nez p2, :cond_52

    move-object p2, v0

    goto :goto_59

    .line 1263
    :cond_52
    new-instance p2, Landroid/content/pm/ActivityInfo;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    invoke-direct {p2, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    :goto_59
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 1264
    new-instance p2, Landroid/content/pm/ResolveInfo;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmInstantAppInstallerInfo(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 1265
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmWebInstantAppsDisabled(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedSparseBooleanArray;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/utils/WatchedSparseBooleanArray;->snapshot()Lcom/android/server/utils/WatchedSparseBooleanArray;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 1266
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p2}, Lcom/android/server/pm/InstantAppRegistry;->snapshot()Lcom/android/server/pm/InstantAppRegistry;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 1268
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAndroidApplication(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-nez p2, :cond_7f

    goto :goto_88

    .line 1270
    :cond_7f
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAndroidApplication(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    :goto_88
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    .line 1271
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    .line 1272
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p2}, Lcom/android/server/pm/AppsFilterImpl;->snapshot()Lcom/android/server/pm/AppsFilterSnapshot;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 1273
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/resolution/ComponentResolver;->snapshot()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 1274
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmFrozenPackagesSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1275
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSharedLibraries(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/SharedLibrariesImpl;->snapshot()Lcom/android/server/pm/SharedLibrariesRead;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    goto :goto_104

    :cond_b5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_107

    .line 1277
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    .line 1278
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 1279
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1280
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmInstrumentation(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 1281
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    .line 1282
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    .line 1283
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 1284
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmInstantAppInstallerInfo(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 1285
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmWebInstantAppsDisabled(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedSparseBooleanArray;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 1286
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 1287
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAndroidApplication(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    .line 1288
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    .line 1289
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 1290
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 1291
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1292
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSharedLibraries(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 1296
    :goto_104
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    return-void

    .line 1294
    :cond_107
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
