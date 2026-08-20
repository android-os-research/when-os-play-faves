.class public Lcom/samsung/android/server/corestate/DexCoreStateVolatileObserver;
.super Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;
.source "DexCoreStateVolatileObserver.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public populateState(Landroid/os/Bundle;I)I
    .registers 3

    .line 34
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->populateState(Landroid/os/Bundle;I)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public registerObservingItems()V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "dex_font_scale"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mFloatDefaultKeyMap:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
