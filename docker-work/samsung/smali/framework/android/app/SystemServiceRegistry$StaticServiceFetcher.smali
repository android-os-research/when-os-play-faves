.class abstract Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StaticServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mCachedInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2565
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist createService()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final blacklist getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .line 2570
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<TT;>;"
    monitor-enter p0

    .line 2571
    :try_start_1
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_10

    .line 2573
    :try_start_5
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->createService()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_b
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_5 .. :try_end_b} :catch_c
    .catchall {:try_start_5 .. :try_end_b} :catchall_14

    .line 2576
    goto :goto_10

    .line 2574
    :catch_c
    move-exception v0

    .line 2575
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_d
    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V

    .line 2578
    .end local v0    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_10
    :goto_10
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 2579
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method
