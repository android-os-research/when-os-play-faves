.class public Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;
.super Ljava/lang/Object;
.source "BinderCallsStatsService.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$WorkSourceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinderCallsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorizedWorkSourceProvider"
.end annotation


# instance fields
.field public mAppIdTrustlist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdTrustlist:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final createAppidTrustlist(Landroid/content/Context;)Landroid/util/ArraySet;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 120
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    .line 123
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0xc0000

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v2, :cond_5f

    .line 129
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 131
    :try_start_31
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    .line 132
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 133
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_42} :catch_43

    goto :goto_5c

    :catch_43
    move-exception v5

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find uid for package name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "BinderCallsStatsService"

    invoke-static {v6, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_5f
    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;)V
    .registers 6

    const-string v0, "AppIds of apps that can set the work source:"

    .line 104
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdTrustlist:Landroid/util/ArraySet;

    .line 106
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/internal/os/AppIdToPackageMap;->mapAppId(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_34
    return-void
.end method

.method public getCallingUid()I
    .registers 1

    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public resolveWorkSourceUid(I)I
    .registers 4

    .line 89
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->getCallingUid()I

    move-result v0

    .line 90
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 91
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdTrustlist:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, -0x1

    if-eq p1, p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move p1, v0

    :goto_1e
    return p1

    :cond_1f
    return v0
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->createAppidTrustlist(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdTrustlist:Landroid/util/ArraySet;

    return-void
.end method
