.class public abstract Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;
.super Ljava/lang/Object;
.source "CoreStateSystemFeatureObserver.java"

# interfaces
.implements Lcom/samsung/android/server/corestate/CoreStateObserver;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSystemFeaturesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemFeaturesRepository:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesRepository:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesList:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 5

    .line 43
    invoke-interface {p0}, Lcom/samsung/android/server/corestate/CoreStateObserver;->registerObservingItems()V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesRepository:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 45
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_29
    return-void
.end method

.method public populateState(Landroid/os/Bundle;I)I
    .registers 4

    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesRepository:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_a

    :cond_2a
    const/4 p0, 0x2

    return p0
.end method
