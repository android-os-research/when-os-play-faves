.class public Lcom/android/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field public myHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$m_updateSearchables(Lcom/android/server/search/SearchManagerService$MyPackageMonitor;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->_updateSearchables(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .registers 7

    .line 219
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 220
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.sm"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 222
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    .line 223
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x7530

    .line 224
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 225
    new-instance v1, Lcom/android/server/search/SearchManagerService$MyPackageMonitor$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor$1;-><init>(Lcom/android/server/search/SearchManagerService$MyPackageMonitor;Landroid/os/Looper;Lcom/android/server/search/SearchManagerService;)V

    iput-object v1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->myHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final _updateSearchables(I)V
    .registers 5

    const-string v0, "SearchManagerService"

    const-string v1, "_updateSearchables"

    .line 255
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v0}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 258
    :goto_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 259
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-ne p1, v2, :cond_37

    .line 260
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmSearchables(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/search/Searchables;

    invoke-virtual {v1}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    goto :goto_3a

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 264
    :cond_3a
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_5d

    const-string v0, "SearchManagerService"

    const-string v1, "_updateSearchables completed."

    .line 265
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 270
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {p0}, Lcom/android/server/search/SearchManagerService;->-$$Nest$fgetmContext(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_5d
    move-exception p0

    .line 264
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 1

    .line 238
    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    return-void
.end method

.method public final updateSearchables()V
    .registers 4

    const-string v0, "SearchManagerService"

    const-string/jumbo v1, "updateSearchables"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 250
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->myHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
