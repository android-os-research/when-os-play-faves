.class Landroid/app/SystemServiceRegistry$162;
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
        "Lcom/samsung/android/hardware/display/SemMdnieManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2033
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 2036
    const-string/jumbo v0, "mDNIe"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2037
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/display/ISemMdnieManager;

    move-result-object v1

    .line 2038
    .local v1, "service":Lcom/samsung/android/hardware/display/ISemMdnieManager;
    new-instance v2, Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-direct {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;-><init>(Lcom/samsung/android/hardware/display/ISemMdnieManager;)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2033
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$162;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object p1

    return-object p1
.end method
