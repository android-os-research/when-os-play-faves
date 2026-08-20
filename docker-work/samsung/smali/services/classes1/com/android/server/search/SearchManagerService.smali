.class public Lcom/android/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;,
        Lcom/android/server/search/SearchManagerService$MyPackageMonitor;,
        Lcom/android/server/search/SearchManagerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mSearchables:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSearchables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/search/Searchables;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monCleanupUser(Lcom/android/server/search/SearchManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/search/SearchManagerService;->onCleanupUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUnlockUser(Lcom/android/server/search/SearchManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/search/SearchManagerService;->onUnlockUser(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 150
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 151
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;-><init>(Lcom/android/server/search/SearchManagerService;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 153
    new-instance v0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;-><init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V

    .line 154
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/search/SearchManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 359
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-string v1, "SearchManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 361
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 362
    iget-object p2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter p2

    const/4 v1, 0x0

    .line 363
    :goto_16
    :try_start_16
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    const-string v2, "\nUser: "

    .line 364
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 365
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 366
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/search/Searchables;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/search/Searchables;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 369
    :cond_40
    monitor-exit p2

    return-void

    :catchall_42
    move-exception p0

    monitor-exit p2
    :try_end_44
    .catchall {:try_start_16 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public getGlobalSearchActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 329
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivities()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .line 337
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 3

    if-nez p1, :cond_c

    const-string p0, "SearchManagerService"

    const-string/jumbo p1, "getSearchableInfo(), activity == null"

    .line 313
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 316
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/search/Searchables;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSearchables(I)Lcom/android/server/search/Searchables;
    .registers 3

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(IZ)Lcom/android/server/search/Searchables;

    move-result-object p0

    return-object p0
.end method

.method public final getSearchables(IZ)Lcom/android/server/search/Searchables;
    .registers 7

    .line 162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 164
    :try_start_4
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 165
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 168
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_7c

    if-eqz v2, :cond_44

    .line 172
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v2

    .line 175
    :try_start_20
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/search/Searchables;

    if-nez v0, :cond_3a

    .line 177
    new-instance v0, Lcom/android/server/search/Searchables;

    iget-object p2, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p2, p1}, Lcom/android/server/search/Searchables;-><init>(Landroid/content/Context;I)V

    .line 178
    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    .line 179
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_3f

    :cond_3a
    if-eqz p2, :cond_3f

    .line 181
    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    .line 183
    :cond_3f
    :goto_3f
    monitor-exit v2

    return-object v0

    :catchall_41
    move-exception p0

    .line 184
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_41

    throw p0

    .line 169
    :cond_44
    :try_start_44
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t unlocked"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7c
    .catchall {:try_start_44 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p0

    .line 172
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    throw p0
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/search/Searchables;->getSearchablesInGlobalSearchList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSearchablesInInsightSearch(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/search/Searchables;->getSearchablesInInsightSearchList(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .line 345
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/search/Searchables;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public launchAssist(ILandroid/os/Bundle;)V
    .registers 3

    .line 350
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 351
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_d

    .line 353
    invoke-interface {p0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    :cond_d
    return-void
.end method

.method public final onCleanupUser(I)V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 208
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onUnlockUser(I)V
    .registers 3

    const/4 v0, 0x1

    .line 198
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(IZ)Lcom/android/server/search/Searchables;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
