.class Landroid/app/SystemServiceRegistry$169;
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
        "Lcom/samsung/android/content/smartclip/SpenGestureManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2118
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/content/smartclip/SpenGestureManager;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 2121
    new-instance v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/content/smartclip/SpenGestureManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2118
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$169;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/content/smartclip/SpenGestureManager;

    move-result-object p1

    return-object p1
.end method
