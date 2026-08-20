.class Landroid/app/SystemServiceRegistry$103;
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
        "Landroid/os/BugreportManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1382
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/BugreportManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1386
    const-string v0, "bugreport"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1387
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/os/BugreportManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    .line 1388
    invoke-static {v0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/BugreportManager;-><init>(Landroid/content/Context;Landroid/os/IDumpstate;)V

    .line 1387
    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1382
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$103;->createService(Landroid/app/ContextImpl;)Landroid/os/BugreportManager;

    move-result-object p1

    return-object p1
.end method
