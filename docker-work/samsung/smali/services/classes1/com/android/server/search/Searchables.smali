.class public Lcom/android/server/search/Searchables;
.super Ljava/lang/Object;
.source "Searchables.java"


# static fields
.field public static ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = "com.google.android.providers.enhancedgooglesearch/.Launcher"

.field public static final GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = "com.android.googlesearch/.GoogleSearch"

.field public static final LOG_TAG:Ljava/lang/String; = "Searchables"

.field public static final MD_LABEL_DEFAULT_SEARCHABLE:Ljava/lang/String; = "android.app.default_searchable"

.field public static final MD_SEARCHABLE_SYSTEM_SEARCH:Ljava/lang/String; = "*"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

.field public mGlobalSearchActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public mSearchablesInGlobalSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchablesInInsightSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:I

.field public mWebSearchActivity:Landroid/content/ComponentName;


# direct methods
.method public static bridge synthetic -$$Nest$smisSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 385
    new-instance v0, Lcom/android/server/search/Searchables$1;

    invoke-direct {v0}, Lcom/android/server/search/Searchables$1;-><init>()V

    sput-object v0, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 67
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 68
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 70
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInInsightSearchList:Ljava/util/ArrayList;

    .line 75
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 76
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 93
    iput-object p1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 94
    iput p2, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 95
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public static final isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .registers 2

    .line 414
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method public final createFilterdResolveInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 528
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 529
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 531
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 532
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 533
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 534
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 533
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 535
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3d
    return-object p0
.end method

.method public final createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 512
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 513
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 514
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 515
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 516
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchableInfo;

    .line 517
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 518
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3b
    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string p1, "Searchable authorities:"

    .line 570
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    monitor-enter p0

    .line 572
    :try_start_6
    iget-object p1, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    if-eqz p1, :cond_27

    .line 573
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/SearchableInfo;

    const-string v0, "  "

    .line 574
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 577
    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public final findGlobalSearchActivities()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10010000

    .line 339
    invoke-virtual {p0, v0, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 341
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 343
    sget-object v0, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1a
    return-object p0
.end method

.method public final findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/android/server/search/Searchables;->getGlobalSearchProviderSetting()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 357
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 359
    invoke-virtual {p0, v0}, Lcom/android/server/search/Searchables;->isInstalled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-object v0

    .line 364
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/search/Searchables;->getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 446
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 449
    invoke-virtual {p0, v1, p1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 451
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_33

    const/4 p1, 0x0

    .line 452
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 454
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_33
    const-string p0, "Searchables"

    const-string p1, "No web search activity found"

    .line 456
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    if-eqz p1, :cond_1b

    .line 422
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1b

    const/4 p0, 0x0

    .line 423
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 424
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1b
    const-string p0, "Searchables"

    const-string p1, "No global search activity found"

    .line 427
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getGlobalSearchActivities()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 505
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdResolveInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivity()Landroid/content/ComponentName;
    .registers 5

    monitor-enter p0

    .line 545
    :try_start_1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 547
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 548
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1f

    .line 549
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 550
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_22

    monitor-exit p0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    .line 552
    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getGlobalSearchProviderSetting()Ljava/lang/String;
    .registers 3

    .line 432
    iget-object p0, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 434
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const-string/jumbo v1, "search_global_search_activity"

    .line 433
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 8

    .line 128
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    monitor-enter p0

    .line 129
    :try_start_3
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 132
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 134
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 133
    invoke-virtual {p1, v0, v3, v4}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 135
    monitor-exit p0

    return-object v1

    .line 137
    :cond_28
    monitor-exit p0

    return-object v2

    .line 139
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_e3

    .line 148
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    const-wide/16 v3, 0x80

    iget v5, p0, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-interface {v1, p1, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_35} :catch_cb

    if-nez v1, :cond_4e

    const-string p0, "Searchables"

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error activity info is null:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 162
    :cond_4e
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_59

    const-string v4, "android.app.default_searchable"

    .line 164
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5a

    :cond_59
    move-object v3, v2

    :goto_5a
    if-nez v3, :cond_68

    .line 168
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_68

    const-string v3, "android.app.default_searchable"

    .line 170
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_68
    if-eqz v3, :cond_ca

    const-string v1, "*"

    .line 178
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    return-object v2

    .line 181
    :cond_73
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_95

    .line 184
    new-instance v4, Landroid/content/ComponentName;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    .line 186
    :cond_95
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_9a
    monitor-enter p0

    .line 192
    :try_start_9b
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchableInfo;

    if-eqz v1, :cond_aa

    .line 194
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_aa
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_9b .. :try_end_ab} :catchall_c7

    if-eqz v1, :cond_ca

    .line 199
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 201
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 200
    invoke-virtual {p0, p1, v0, v3}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result p0

    if-eqz p0, :cond_c6

    return-object v1

    :cond_c6
    return-object v2

    :catchall_c7
    move-exception p1

    .line 196
    :try_start_c8
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw p1

    :cond_ca
    return-object v2

    :catch_cb
    move-exception p0

    const-string p1, "Searchables"

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting activity info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catchall_e3
    move-exception p1

    .line 139
    :try_start_e4
    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw p1
.end method

.method public declared-synchronized getSearchablesInGlobalSearchList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 484
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchablesInInsightSearchList(Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 492
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesInInsightSearchList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_f

    .line 494
    iget-object p1, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 497
    :cond_f
    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSearchablesList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 477
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWebSearchActivity()Landroid/content/ComponentName;
    .registers 5

    monitor-enter p0

    .line 559
    :try_start_1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 560
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 561
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 562
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1f

    .line 563
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 564
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_22

    monitor-exit p0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    .line 566
    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isInstalled(Landroid/content/ComponentName;)Z
    .registers 4

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 376
    invoke-virtual {p0, v0, p1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 378
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 465
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/high16 v1, 0x800000

    or-int/2addr p2, v1

    int-to-long v3, p2

    iget v5, p0, Lcom/android/server/search/Searchables;->mUserId:I

    move-object v1, p1

    .line 464
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 466
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public updateSearchableList()V
    .registers 24

    move-object/from16 v1, p0

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const v8, 0x10000080

    .line 252
    :try_start_24
    invoke-virtual {v1, v5, v8}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 256
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.WEB_SEARCH"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1, v9, v8}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 261
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.INSIGHT_SEARCH"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x80

    .line 262
    invoke-virtual {v1, v9, v10}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 265
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.android.intent.action.SEARCH"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1, v11, v10}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    if-nez v5, :cond_58

    if-nez v8, :cond_58

    if-nez v9, :cond_58

    if-eqz v10, :cond_54

    goto :goto_58

    :cond_54
    move-wide/from16 v17, v6

    goto/16 :goto_fe

    :cond_58
    :goto_58
    if-nez v5, :cond_5c

    const/4 v12, 0x0

    goto :goto_60

    .line 271
    :cond_5c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    :goto_60
    if-nez v8, :cond_64

    const/4 v13, 0x0

    goto :goto_68

    .line 272
    :cond_64
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    :goto_68
    if-nez v9, :cond_6c

    const/4 v14, 0x0

    goto :goto_70

    .line 273
    :cond_6c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    :goto_70
    if-nez v10, :cond_74

    const/4 v15, 0x0

    goto :goto_78

    .line 274
    :cond_74
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15
    :try_end_78
    .catchall {:try_start_24 .. :try_end_78} :catchall_123

    :goto_78
    add-int v11, v12, v13

    move-wide/from16 v17, v6

    add-int v6, v11, v14

    add-int/2addr v15, v6

    const/4 v7, 0x0

    :goto_80
    if-ge v7, v15, :cond_fe

    if-ge v7, v12, :cond_91

    .line 279
    :try_start_84
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    move-object/from16 v22, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v22

    goto :goto_b5

    :cond_91
    if-ge v7, v11, :cond_9e

    move-object/from16 v16, v5

    sub-int v5, v7, v12

    .line 280
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    goto :goto_b5

    :cond_9e
    move-object/from16 v16, v5

    if-ge v7, v6, :cond_ac

    sub-int v5, v7, v12

    sub-int/2addr v5, v13

    .line 281
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_a9
    check-cast v5, Landroid/content/pm/ResolveInfo;

    goto :goto_b5

    :cond_ac
    sub-int v5, v7, v12

    sub-int/2addr v5, v13

    sub-int/2addr v5, v14

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_a9

    .line 282
    :goto_b5
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move/from16 v19, v6

    .line 284
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v20, v8

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v9

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_f3

    .line 285
    iget-object v6, v1, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    iget v8, v1, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-static {v6, v5, v8}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;

    move-result-object v5

    if-eqz v5, :cond_f3

    .line 288
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    move-result v6

    if-eqz v6, :cond_ea

    .line 291
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f3

    .line 292
    :cond_ea
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->semShouldIncludeInInsightSearch()Z

    move-result v6

    if-eqz v6, :cond_f3

    .line 293
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f3
    :goto_f3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_80

    .line 301
    :cond_fe
    :goto_fe
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/search/Searchables;->findGlobalSearchActivities()Ljava/util/List;

    move-result-object v5

    .line 304
    invoke-virtual {v1, v5}, Lcom/android/server/search/Searchables;->findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v6

    .line 308
    invoke-virtual {v1, v6}, Lcom/android/server/search/Searchables;->findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v7

    .line 311
    monitor-enter p0
    :try_end_10b
    .catchall {:try_start_84 .. :try_end_10b} :catchall_121

    .line 312
    :try_start_10b
    iput-object v0, v1, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 313
    iput-object v2, v1, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 314
    iput-object v3, v1, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 316
    iput-object v4, v1, Lcom/android/server/search/Searchables;->mSearchablesInInsightSearchList:Ljava/util/ArrayList;

    .line 318
    iput-object v5, v1, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    .line 319
    iput-object v6, v1, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 320
    iput-object v7, v1, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 321
    monitor-exit p0
    :try_end_11a
    .catchall {:try_start_10b .. :try_end_11a} :catchall_11e

    .line 323
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11e
    move-exception v0

    .line 321
    :try_start_11f
    monitor-exit p0
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_11e

    :try_start_120
    throw v0
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_121

    :catchall_121
    move-exception v0

    goto :goto_126

    :catchall_123
    move-exception v0

    move-wide/from16 v17, v6

    .line 323
    :goto_126
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    throw v0
.end method
