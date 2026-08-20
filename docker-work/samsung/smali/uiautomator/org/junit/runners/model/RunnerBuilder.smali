.class public abstract Lorg/junit/runners/model/RunnerBuilder;
.super Ljava/lang/Object;
.source "RunnerBuilder.java"


# instance fields
.field private final parents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/model/RunnerBuilder;->parents:Ljava/util/Set;

    return-void
.end method

.method private configureRunner(Lorg/junit/runner/Runner;)V
    .registers 5
    .param p1, "runner"    # Lorg/junit/runner/Runner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/InvalidOrderingException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    .line 82
    .local v0, "description":Lorg/junit/runner/Description;
    const-class v1, Lorg/junit/runner/OrderWith;

    invoke-virtual {v0, v1}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/OrderWith;

    .line 83
    .local v1, "orderWith":Lorg/junit/runner/OrderWith;
    if-eqz v1, :cond_19

    .line 84
    invoke-interface {v1}, Lorg/junit/runner/OrderWith;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/junit/runner/manipulation/Ordering;->definedBy(Ljava/lang/Class;Lorg/junit/runner/Description;)Lorg/junit/runner/manipulation/Ordering;

    move-result-object v2

    .line 85
    .local v2, "ordering":Lorg/junit/runner/manipulation/Ordering;
    invoke-virtual {v2, p1}, Lorg/junit/runner/manipulation/Ordering;->apply(Ljava/lang/Object;)V

    .line 87
    .end local v2    # "ordering":Lorg/junit/runner/manipulation/Ordering;
    :cond_19
    return-void
.end method

.method private runners([Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .line 123
    .local p1, "children":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "runners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Runner;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 125
    .local v3, "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v3}, Lorg/junit/runners/model/RunnerBuilder;->safeRunnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v4

    .line 126
    .local v4, "childRunner":Lorg/junit/runner/Runner;
    if-eqz v4, :cond_14

    .line 127
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v3    # "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "childRunner":Lorg/junit/runner/Runner;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 130
    :cond_17
    return-object v0
.end method


# virtual methods
.method addParent(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 90
    .local p1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/junit/runners/model/RunnerBuilder;->parents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    return-object p1

    .line 91
    :cond_9
    new-instance v0, Lorg/junit/runners/model/InitializationError;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "class \'%s\' (possibly indirectly) contains itself as a SuiteClass"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeParent(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 97
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/junit/runners/model/RunnerBuilder;->parents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public abstract runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public runners(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 119
    .local p1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/junit/runners/model/RunnerBuilder;->runners(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public runners(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 108
    .local p1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "children":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/junit/runners/model/RunnerBuilder;->addParent(Ljava/lang/Class;)Ljava/lang/Class;

    .line 111
    :try_start_3
    invoke-direct {p0, p2}, Lorg/junit/runners/model/RunnerBuilder;->runners([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 113
    invoke-virtual {p0, p1}, Lorg/junit/runners/model/RunnerBuilder;->removeParent(Ljava/lang/Class;)V

    .line 111
    return-object v0

    .line 113
    :catchall_b
    move-exception v0

    invoke-virtual {p0, p1}, Lorg/junit/runners/model/RunnerBuilder;->removeParent(Ljava/lang/Class;)V

    .line 114
    throw v0
.end method

.method public safeRunnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .line 70
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/junit/runners/model/RunnerBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0

    .line 71
    .local v0, "runner":Lorg/junit/runner/Runner;
    if-eqz v0, :cond_9

    .line 72
    invoke-direct {p0, v0}, Lorg/junit/runners/model/RunnerBuilder;->configureRunner(Lorg/junit/runner/Runner;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 74
    :cond_9
    return-object v0

    .line 75
    .end local v0    # "runner":Lorg/junit/runner/Runner;
    :catchall_a
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/junit/internal/runners/ErrorReportingRunner;

    invoke-direct {v1, p1, v0}, Lorg/junit/internal/runners/ErrorReportingRunner;-><init>(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v1
.end method
