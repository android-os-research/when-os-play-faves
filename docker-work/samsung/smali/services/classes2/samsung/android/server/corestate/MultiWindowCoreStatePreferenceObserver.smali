.class public Lsamsung/android/server/corestate/MultiWindowCoreStatePreferenceObserver;
.super Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;
.source "MultiWindowCoreStatePreferenceObserver.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public registerObservingItems()V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "divider_panel_first_auto_open_disabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    const-string v2, "mw_immersive_mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    const-string v0, "corner_gesture_custom_value"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
