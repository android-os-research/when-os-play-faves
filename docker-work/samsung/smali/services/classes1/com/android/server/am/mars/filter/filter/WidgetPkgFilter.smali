.class public Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;
.super Ljava/lang/Object;
.source "WidgetPkgFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;,
        Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;
    }
.end annotation


# instance fields
.field public mBoundedWidgetPkgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mContextUserId:I

.field public mRunningWidgets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;
    .registers 1

    .line 38
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 56
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 57
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 8

    .line 61
    iget p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    const/4 v0, 0x0

    if-eq p2, p3, :cond_c

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->isSubUser(I)Z

    move-result p3

    if-nez p3, :cond_c

    return v0

    .line 65
    :cond_c
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result p3

    const/4 v1, 0x4

    if-eqz p3, :cond_40

    const/4 p3, 0x3

    if-ne p4, p3, :cond_40

    .line 67
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 68
    :try_start_1d
    iget-object p4, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p4

    if-lez p4, :cond_3b

    .line 69
    iget-object p4, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    if-eqz p4, :cond_3b

    .line 70
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3b

    .line 71
    monitor-exit p3

    return v1

    .line 74
    :cond_3b
    monitor-exit p3

    goto :goto_40

    :catchall_3d
    move-exception p0

    monitor-exit p3
    :try_end_3f
    .catchall {:try_start_1d .. :try_end_3f} :catchall_3d

    throw p0

    .line 77
    :cond_40
    :goto_40
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 78
    :try_start_43
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    if-eqz p0, :cond_59

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_59

    .line 80
    monitor-exit p3

    return v1

    .line 82
    :cond_59
    monitor-exit p3

    return v0

    :catchall_5b
    move-exception p0

    monitor-exit p3
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public getBoundAppWidgetPackages()V
    .registers 10

    .line 96
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 98
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 99
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 100
    iget v4, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    if-eq v3, v4, :cond_33

    invoke-virtual {p0, v3}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->isSubUser(I)Z

    move-result v4

    if-nez v4, :cond_33

    goto :goto_18

    .line 104
    :cond_33
    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    .line 105
    :goto_38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_18

    .line 106
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 107
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v0, v5, v3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 110
    iget-object v6, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 111
    :try_start_53
    iget-object v7, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_66

    .line 113
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :cond_66
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6f

    .line 116
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_6f
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v6

    goto :goto_7d

    :catchall_7a
    move-exception p0

    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_53 .. :try_end_7c} :catchall_7a

    throw p0

    :cond_7d
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_80
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public final isSubUser(I)Z
    .registers 4

    .line 87
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    return v0

    :cond_6
    const/16 p0, 0x96

    const/4 v1, 0x1

    if-lt p1, p0, :cond_11

    const/16 p0, 0xa0

    if-gt p1, p0, :cond_11

    move p0, v1

    goto :goto_12

    :cond_11
    move p0, v0

    :goto_12
    if-nez p0, :cond_1a

    .line 92
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    :cond_1a
    move v0, v1

    :cond_1b
    return v0
.end method

.method public onAppWidgetDisabled(Ljava/lang/String;I)V
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    if-eqz v1, :cond_23

    .line 139
    invoke-virtual {v1, p1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 140
    invoke-virtual {v1, p1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->remove(Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public onAppWidgetEnabled(Ljava/lang/String;I)V
    .registers 6

    .line 126
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    if-nez v1, :cond_17

    .line 129
    new-instance v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;-><init>(Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages-IA;)V

    .line 131
    :cond_17
    invoke-virtual {v1, p1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->add(Ljava/lang/String;)V

    .line 132
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    return-void
.end method
