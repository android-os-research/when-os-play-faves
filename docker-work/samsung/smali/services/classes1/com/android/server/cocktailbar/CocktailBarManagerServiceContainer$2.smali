.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;
.super Landroid/content/pm/LauncherApps$Callback;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .registers 2

    .line 1344
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    .line 1369
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1370
    :try_start_7
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2f

    .line 1372
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_19
    if-ge v1, p2, :cond_40

    .line 1374
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_2c

    .line 1376
    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageAdded(Ljava/lang/String;)V

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1380
    :cond_2f
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_40

    .line 1382
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageAdded(Ljava/lang/String;)V

    .line 1385
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    .line 1390
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1391
    :try_start_7
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2f

    .line 1393
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_19
    if-ge v1, p2, :cond_40

    .line 1395
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_2c

    .line 1397
    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageChanged(Ljava/lang/String;)V

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1401
    :cond_2f
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_40

    .line 1403
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageChanged(Ljava/lang/String;)V

    .line 1406
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    .line 1348
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1349
    :try_start_7
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2f

    .line 1351
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_19
    if-ge v1, p2, :cond_40

    .line 1353
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_2c

    .line 1355
    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;)V

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1359
    :cond_2f
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_40

    .line 1361
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;)V

    .line 1364
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 4

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 4

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    return-void
.end method
