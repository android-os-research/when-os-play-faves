.class Landroid/app/SystemServiceRegistry$51;
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
        "Lcom/samsung/android/edge/SemEdgeManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 883
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/edge/SemEdgeManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 886
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 887
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/samsung/android/edge/SemEdgeManager;

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/edge/SemEdgeManager;-><init>(Landroid/content/Context;Landroid/app/INotificationManager;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 883
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$51;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/edge/SemEdgeManager;

    move-result-object p1

    return-object p1
.end method
