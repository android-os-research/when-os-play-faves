.class public Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;
.super Ljava/lang/Object;
.source "MultiBackgroundInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiBackgroundInitializerResults"
.end annotation


# instance fields
.field private final exceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentException;",
            ">;"
        }
    .end annotation
.end field

.field private final initializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final resultObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentException;",
            ">;)V"
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->initializers:Ljava/util/Map;

    .line 246
    iput-object p2, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->resultObjects:Ljava/util/Map;

    .line 247
    iput-object p3, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$1;)V
    .registers 5

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private checkName(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer<",
            "*>;"
        }
    .end annotation

    .line 338
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->initializers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    if-eqz p0, :cond_b

    return-object p0

    .line 340
    :cond_b
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No child initializer with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getException(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/ConcurrentException;
    .registers 2

    .line 303
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    .line 304
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/concurrent/ConcurrentException;

    return-object p0
.end method

.method public getInitializer(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer<",
            "*>;"
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    move-result-object p0

    return-object p0
.end method

.method public getResultObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 275
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    .line 276
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->resultObjects:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public initializerNames()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->initializers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public isException(Ljava/lang/String;)Z
    .registers 2

    .line 288
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    .line 289
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSuccessful()Z
    .registers 1

    .line 325
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method
