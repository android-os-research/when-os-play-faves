.class Landroid/app/SystemServiceRegistry$67;
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
        "Landroid/net/lowpan/LowpanManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1031
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/net/lowpan/LowpanManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1034
    const-string v0, "lowpan"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1035
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/lowpan/ILowpanManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManager;

    move-result-object v1

    .line 1036
    .local v1, "service":Landroid/net/lowpan/ILowpanManager;
    new-instance v2, Landroid/net/lowpan/LowpanManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/net/lowpan/LowpanManager;-><init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanManager;)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1031
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$67;->createService(Landroid/app/ContextImpl;)Landroid/net/lowpan/LowpanManager;

    move-result-object p1

    return-object p1
.end method
