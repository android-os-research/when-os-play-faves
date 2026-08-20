.class public Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;
.super Landroid/database/ContentObserver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlobalSearchProviderObserver"
.end annotation


# instance fields
.field public final mResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V
    .registers 4

    .line 277
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    const/4 p1, 0x0

    .line 278
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 279
    iput-object p2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "search_global_search_activity"

    .line 281
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p2, p1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 288
    iget-object p1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {p1}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x0

    .line 289
    :goto_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v1}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 290
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v1}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/search/Searchables;

    invoke-virtual {v1}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 292
    :cond_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3f

    .line 293
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x20000000

    .line 294
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 295
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {p0}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmContext(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_3f
    move-exception p0

    .line 292
    :try_start_40
    monitor-exit p1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method
