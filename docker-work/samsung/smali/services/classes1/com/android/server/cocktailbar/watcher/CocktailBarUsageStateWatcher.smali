.class public Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;
.super Ljava/lang/Object;
.source "CocktailBarUsageStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;
    }
.end annotation


# static fields
.field public static final DELIMETER:Ljava/lang/String; = ":"

.field public static final LAUNCHER_PKG:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final LEVEL_META_DATA:I = 0x2

.field public static final LEVEL_PACKAGE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CocktailBarUsageStateWatcher"


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public mCategoryFilter:I

.field public mComponentsToHideEdge:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mCurrentPackageName:Ljava/lang/String;

.field public mLevel:I

.field public mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

.field public mLock:Ljava/lang/Object;

.field public mMetaDataHideEdgeService:Ljava/lang/String;

.field public mPackageHideEdgeServiceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field public mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLevel(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I
    .registers 1

    iget p0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetaDataHideEdgeService(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mMetaDataHideEdgeService:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageHideEdgeServiceList(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mCurrentPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    const-string p2, "activity"

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mActivityManager:Landroid/app/ActivityManager;

    .line 52
    iget-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/UsageStatsManager;

    iput-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 53
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getPackageHideEdgeServiceList()Ljava/util/HashSet;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    .line 54
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getMetaDataHideEdgeService()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mMetaDataHideEdgeService:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result p1

    iput p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mCategoryFilter:I

    .line 56
    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_6a

    .line 57
    iget p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 59
    :cond_6a
    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mMetaDataHideEdgeService:Ljava/lang/String;

    if-eqz p1, :cond_7a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7a

    .line 60
    iget p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 62
    :cond_7a
    iget p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    if-lez p1, :cond_81

    .line 63
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->registerUsageStatsWatcher()V

    :cond_81
    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .registers 6

    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[UsageStateWatcher]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_a
    iget-object v2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    if-eqz v2, :cond_2e

    .line 247
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_28

    .line 249
    iget-object v4, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_28
    const-string p0, "\n"

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_34

    :cond_2e
    const-string/jumbo p0, "null\n"

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    :goto_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_3a

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3a
    move-exception p0

    .line 255
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final registerUsageStatsWatcher()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    if-nez v0, :cond_12

    .line 69
    new-instance v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;-><init>(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 228
    :try_start_b
    iget-object p0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    if-eqz p0, :cond_12

    .line 229
    invoke-virtual {p0, v0}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method
