.class Landroid/app/SystemServiceRegistry$168;
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
        "Lcom/samsung/android/media/codec/SemVideoTranscodingService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2107
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/media/codec/SemVideoTranscodingService;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 2110
    new-instance v0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;

    invoke-direct {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2107
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$168;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/media/codec/SemVideoTranscodingService;

    move-result-object p1

    return-object p1
.end method
