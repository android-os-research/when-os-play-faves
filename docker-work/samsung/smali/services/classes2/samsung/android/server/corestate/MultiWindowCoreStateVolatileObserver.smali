.class public Lsamsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;
.super Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;
.source "MultiWindowCoreStateVolatileObserver.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public registerObservingItems()V
    .registers 5

    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mw_enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    const-string v2, "mw_blocked_minimized_freeform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    const/4 v3, 0x0

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 42
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    const-string v2, "custom_density"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    const-string v2, "mw_navibar_immersive_mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    const-string/jumbo v2, "stay_focus_activity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
