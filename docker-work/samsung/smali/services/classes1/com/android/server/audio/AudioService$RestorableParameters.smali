.class public Lcom/android/server/audio/AudioService$RestorableParameters;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestorableParameters"
.end annotation


# instance fields
.field public mMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/BooleanSupplier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$gvBS4kjBFz3YcSPGsSRUFKDoa4c(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/AudioService$RestorableParameters;->lambda$setParameters$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tcryFOhh04D1NMhDdtoHy2JkFc0(Ljava/util/function/BooleanSupplier;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/AudioService$RestorableParameters;->lambda$restoreAll$1(Ljava/util/function/BooleanSupplier;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    new-instance v0, Lcom/android/server/audio/AudioService$RestorableParameters$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$RestorableParameters$1;-><init>(Lcom/android/server/audio/AudioService$RestorableParameters;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService$RestorableParameters-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$RestorableParameters;-><init>()V

    return-void
.end method

.method public static synthetic lambda$restoreAll$1(Ljava/util/function/BooleanSupplier;)Z
    .registers 1

    .line 858
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$setParameters$0(Ljava/lang/String;)Z
    .registers 1

    .line 814
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public queueRestoreWithRemovalIfTrue(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V
    .registers 4

    const-string/jumbo v0, "id must not be null"

    .line 836
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 837
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    if-eqz p2, :cond_11

    .line 839
    :try_start_b
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 841
    :cond_11
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :goto_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public restoreAll()V
    .registers 3

    .line 854
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    .line 857
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 860
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const-string/jumbo v0, "id must not be null"

    .line 808
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "parameter must not be null"

    .line 809
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 810
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    .line 811
    :try_start_f
    invoke-static {p2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1d

    .line 813
    new-instance v2, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/AudioService$RestorableParameters;->queueRestoreWithRemovalIfTrue(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V

    .line 818
    :cond_1d
    monitor-exit v0

    return v1

    :catchall_1f
    move-exception p0

    .line 819
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw p0
.end method
