.class Landroid/app/SystemServiceRegistry$153;
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
        "Landroid/hardware/display/ExynosDisplaySolutionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1908
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/hardware/display/ExynosDisplaySolutionManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1911
    const-string v0, "exynos_display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1912
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IExynosDisplaySolutionManager;

    move-result-object v1

    .line 1913
    .local v1, "service":Landroid/hardware/display/IExynosDisplaySolutionManager;
    if-nez v1, :cond_15

    .line 1914
    const-string v2, "SystemServiceRegistry"

    const-string v3, "Failed to get ExynosDisplaySolution Manager Service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    const/4 v2, 0x0

    return-object v2

    .line 1917
    :cond_15
    new-instance v2, Landroid/hardware/display/ExynosDisplaySolutionManager;

    invoke-direct {v2, v1}, Landroid/hardware/display/ExynosDisplaySolutionManager;-><init>(Landroid/hardware/display/IExynosDisplaySolutionManager;)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1908
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$153;->createService(Landroid/app/ContextImpl;)Landroid/hardware/display/ExynosDisplaySolutionManager;

    move-result-object p1

    return-object p1
.end method
