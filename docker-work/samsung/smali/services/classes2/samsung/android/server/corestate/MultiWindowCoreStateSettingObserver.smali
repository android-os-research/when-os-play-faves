.class public Lsamsung/android/server/corestate/MultiWindowCoreStateSettingObserver;
.super Lcom/samsung/android/server/corestate/CoreStateSettingObserver;
.source "MultiWindowCoreStateSettingObserver.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public registerObservingItems()V
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "freeform_handler_help_popup_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    const-string v2, "multi_split_quick_options_help_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    const-string v2, "freeform_header_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    const-string/jumbo v0, "open_in_pop_up_view"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
