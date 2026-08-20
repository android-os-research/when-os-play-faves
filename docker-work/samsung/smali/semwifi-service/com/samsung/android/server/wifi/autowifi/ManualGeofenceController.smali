.class Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;
.super Ljava/lang/Object;
.source "ManualGeofenceController.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/autowifi/GeofenceController;


# instance fields
.field private final inRangedConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$x9K1WzwmFFK77nZZP3ByzZwKJtI(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->lambda$dump$0(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->lock:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->inRangedConfigs:Ljava/util/Set;

    return-void
.end method

.method private static synthetic lambda$dump$0(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3

    const-string v0, "  "

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addInRangedNetwork(Ljava/lang/String;)V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->inRangedConfigs:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public dump()Ljava/lang/String;
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManualGeofenceController:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    const-string v2, " - test geofence enter keys: "

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->inRangedConfigs:Ljava/util/Set;

    .line 52
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->inRangedConfigs:Ljava/util/Set;

    new-instance v2, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {p0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 54
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_39

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_39
    move-exception p0

    .line 54
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public getInRangedWifiConfigKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->inRangedConfigs:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public removeFromInRangedNetworks(Ljava/lang/String;)V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;->inRangedConfigs:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 36
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
