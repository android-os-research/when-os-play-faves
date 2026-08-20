.class Landroid/app/SystemServiceRegistry$126;
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
        "Lcom/samsung/android/wifi/aware/SemWifiAwareManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1642
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/wifi/aware/SemWifiAwareManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1645
    nop

    .line 1646
    const-string/jumbo v0, "sem_wifi_aware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1645
    invoke-static {v0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    move-result-object v0

    .line 1647
    .local v0, "service":Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;
    new-instance v1, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;-><init>(Landroid/content/Context;Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1642
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$126;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    move-result-object p1

    return-object p1
.end method
