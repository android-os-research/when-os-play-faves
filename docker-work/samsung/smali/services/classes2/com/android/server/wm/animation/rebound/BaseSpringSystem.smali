.class public Lcom/android/server/wm/animation/rebound/BaseSpringSystem;
.super Ljava/lang/Object;
.source "BaseSpringSystem.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseSpringSystem"


# instance fields
.field public final mActiveSprings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/animation/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field

.field public mIdle:Z

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/android/server/wm/animation/rebound/SpringSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mSpringLooper:Lcom/android/server/wm/animation/rebound/SpringLooper;

.field public final mSpringRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/animation/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/animation/rebound/SpringLooper;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mIdle:Z

    if-eqz p1, :cond_23

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mSpringLooper:Lcom/android/server/wm/animation/rebound/SpringLooper;

    .line 57
    invoke-virtual {p1, p0}, Lcom/android/server/wm/animation/rebound/SpringLooper;->setSpringSystem(Lcom/android/server/wm/animation/rebound/BaseSpringSystem;)V

    return-void

    .line 54
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "springLooper is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public activateSpring(Ljava/lang/String;)V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/animation/rebound/Spring;

    if-nez v0, :cond_27

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "springId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not reference a registered spring."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseSpringSystem"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_27
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->getIsIdle()Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mIdle:Z

    .line 197
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mSpringLooper:Lcom/android/server/wm/animation/rebound/SpringLooper;

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/SpringLooper;->start()V

    :cond_3a
    return-void
.end method

.method public addListener(Lcom/android/server/wm/animation/rebound/SpringSystemListener;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 212
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void

    .line 210
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newListener is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public advance(D)V
    .registers 7

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/animation/rebound/Spring;

    .line 147
    invoke-virtual {v1}, Lcom/android/server/wm/animation/rebound/Spring;->systemShouldAdvance()Z

    move-result v2

    if-eqz v2, :cond_23

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v2, p1, v2

    .line 148
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/animation/rebound/Spring;->advance(D)V

    goto :goto_6

    .line 150
    :cond_23
    iget-object v2, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_29
    return-void
.end method

.method public createSpring()Lcom/android/server/wm/animation/rebound/Spring;
    .registers 2

    .line 75
    new-instance v0, Lcom/android/server/wm/animation/rebound/Spring;

    invoke-direct {v0, p0}, Lcom/android/server/wm/animation/rebound/Spring;-><init>(Lcom/android/server/wm/animation/rebound/BaseSpringSystem;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->registerSpring(Lcom/android/server/wm/animation/rebound/Spring;)V

    return-object v0
.end method

.method public deregisterSpring(Lcom/android/server/wm/animation/rebound/Spring;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 136
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 133
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "spring is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllSprings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/animation/rebound/Spring;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 101
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 102
    check-cast p0, Ljava/util/List;

    goto :goto_13

    .line 104
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    .line 106
    :goto_13
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIsIdle()Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mIdle:Z

    return p0
.end method

.method public getSpringById(Ljava/lang/String;)Lcom/android/server/wm/animation/rebound/Spring;
    .registers 2

    if-eqz p1, :cond_b

    .line 90
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/animation/rebound/Spring;

    return-object p0

    .line 88
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public loop(D)V
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/animation/rebound/SpringSystemListener;

    .line 162
    invoke-interface {v1, p0}, Lcom/android/server/wm/animation/rebound/SpringSystemListener;->onBeforeIntegrate(Lcom/android/server/wm/animation/rebound/BaseSpringSystem;)V

    goto :goto_6

    .line 164
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->advance(D)V

    .line 165
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mIdle:Z

    .line 168
    :cond_24
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/animation/rebound/SpringSystemListener;

    .line 169
    invoke-interface {p2, p0}, Lcom/android/server/wm/animation/rebound/SpringSystemListener;->onAfterIntegrate(Lcom/android/server/wm/animation/rebound/BaseSpringSystem;)V

    goto :goto_2a

    .line 171
    :cond_3a
    iget-boolean p1, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mIdle:Z

    if-eqz p1, :cond_43

    .line 172
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mSpringLooper:Lcom/android/server/wm/animation/rebound/SpringLooper;

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/SpringLooper;->stop()V

    :cond_43
    return-void
.end method

.method public registerSpring(Lcom/android/server/wm/animation/rebound/Spring;)V
    .registers 4

    if-eqz p1, :cond_21

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 121
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 119
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "spring is already registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "spring is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAllListeners()V
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public removeListener(Lcom/android/server/wm/animation/rebound/SpringSystemListener;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 224
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void

    .line 222
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listenerToRemove is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
