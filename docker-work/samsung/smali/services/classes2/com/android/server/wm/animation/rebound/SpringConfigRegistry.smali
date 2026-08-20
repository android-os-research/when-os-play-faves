.class public Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;
.super Ljava/lang/Object;
.source "SpringConfigRegistry.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;


# instance fields
.field public final mSpringConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/animation/rebound/SpringConfig;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;-><init>(Z)V

    sput-object v0, Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;->INSTANCE:Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    if-eqz p1, :cond_13

    .line 37
    sget-object p1, Lcom/android/server/wm/animation/rebound/SpringConfig;->defaultConfig:Lcom/android/server/wm/animation/rebound/SpringConfig;

    const-string v0, "default config"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;->addSpringConfig(Lcom/android/server/wm/animation/rebound/SpringConfig;Ljava/lang/String;)Z

    :cond_13
    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;
    .registers 1

    .line 26
    sget-object v0, Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;->INSTANCE:Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;

    return-object v0
.end method


# virtual methods
.method public addSpringConfig(Lcom/android/server/wm/animation/rebound/SpringConfig;Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_15

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 59
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    .line 54
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "configName is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllSpringConfig()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/server/wm/animation/rebound/SpringConfig;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public removeAllSpringConfig()V
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeSpringConfig(Lcom/android/server/wm/animation/rebound/SpringConfig;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 73
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0

    .line 71
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
