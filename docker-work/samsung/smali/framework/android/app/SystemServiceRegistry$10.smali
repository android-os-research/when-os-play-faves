.class Landroid/app/SystemServiceRegistry$10;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/os/CustomFrequencyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 506
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/CustomFrequencyManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 509
    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 510
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    .line 511
    .local v1, "service":Landroid/os/ICustomFrequencyManager;
    if-nez v1, :cond_13

    .line 512
    const-string v2, "SystemServiceRegistry"

    const-string v3, "Failed to get custom frequency manager service."

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_13
    new-instance v2, Landroid/os/CustomFrequencyManager;

    iget-object v3, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/os/CustomFrequencyManager;-><init>(Landroid/os/ICustomFrequencyManager;Landroid/os/Handler;)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 506
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$10;->createService(Landroid/app/ContextImpl;)Landroid/os/CustomFrequencyManager;

    move-result-object p1

    return-object p1
.end method
