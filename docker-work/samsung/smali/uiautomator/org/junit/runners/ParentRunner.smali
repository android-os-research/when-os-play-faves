.class public abstract Lorg/junit/runners/ParentRunner;
.super Lorg/junit/runner/Runner;
.source "ParentRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Orderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runners/ParentRunner$ClassRuleCollector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/junit/runner/Runner;",
        "Lorg/junit/runner/manipulation/Filterable;",
        "Lorg/junit/runner/manipulation/Orderable;"
    }
.end annotation


# static fields
.field private static final VALIDATORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/validator/TestClassValidator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final childrenLock:Ljava/util/concurrent/locks/Lock;

.field private volatile filteredChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile scheduler:Lorg/junit/runners/model/RunnerScheduler;

.field private final testClass:Lorg/junit/runners/model/TestClass;


# direct methods
.method static bridge synthetic -$$Nest$mrunChildren(Lorg/junit/runners/ParentRunner;Lorg/junit/runner/notification/RunNotifier;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->runChildren(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Lorg/junit/validator/AnnotationsValidator;

    invoke-direct {v0}, Lorg/junit/validator/AnnotationsValidator;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/junit/runners/ParentRunner;->VALIDATORS:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/List;

    .line 77
    new-instance v0, Lorg/junit/runners/ParentRunner$1;

    invoke-direct {v0, p0}, Lorg/junit/runners/ParentRunner$1;-><init>(Lorg/junit/runners/ParentRunner;)V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->scheduler:Lorg/junit/runners/model/RunnerScheduler;

    .line 91
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->createTestClass(Ljava/lang/Class;)Lorg/junit/runners/model/TestClass;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    .line 92
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->validate()V

    .line 93
    return-void
.end method

.method protected constructor <init>(Lorg/junit/runners/model/TestClass;)V
    .registers 3
    .param p1, "testClass"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/List;

    .line 77
    new-instance v0, Lorg/junit/runners/ParentRunner$1;

    invoke-direct {v0, p0}, Lorg/junit/runners/ParentRunner$1;-><init>(Lorg/junit/runners/ParentRunner;)V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->scheduler:Lorg/junit/runners/model/RunnerScheduler;

    .line 101
    invoke-static {p1}, Lorg/junit/internal/Checks;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/model/TestClass;

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    .line 102
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->validate()V

    .line 103
    return-void
.end method

.method private applyValidators(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 156
    sget-object v0, Lorg/junit/runners/ParentRunner;->VALIDATORS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/validator/TestClassValidator;

    .line 157
    .local v1, "each":Lorg/junit/validator/TestClassValidator;
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/junit/validator/TestClassValidator;->validateTestClass(Lorg/junit/runners/model/TestClass;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    .end local v1    # "each":Lorg/junit/validator/TestClassValidator;
    goto :goto_10

    .line 160
    :cond_28
    return-void
.end method

.method private areAllChildrenIgnored()Z
    .registers 4

    .line 224
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 225
    .local v1, "child":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Lorg/junit/runners/ParentRunner;->isIgnored(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 226
    const/4 v0, 0x0

    return v0

    .line 228
    .end local v1    # "child":Ljava/lang/Object;, "TT;"
    :cond_1a
    goto :goto_8

    .line 229
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method private comparator(Lorg/junit/runner/manipulation/Sorter;)Ljava/util/Comparator;
    .registers 3
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/manipulation/Sorter;",
            ")",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Lorg/junit/runners/ParentRunner$5;

    invoke-direct {v0, p0, p1}, Lorg/junit/runners/ParentRunner$5;-><init>(Lorg/junit/runners/ParentRunner;Lorg/junit/runner/manipulation/Sorter;)V

    return-object v0
.end method

.method private getFilteredChildren()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 530
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/List;

    if-nez v0, :cond_29

    .line 531
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 533
    :try_start_9
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/List;

    if-nez v0, :cond_1c

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    .line 535
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 534
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_22

    .line 538
    :cond_1c
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 539
    goto :goto_29

    .line 538
    :catchall_22
    move-exception v0

    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 539
    throw v0

    .line 541
    :cond_29
    :goto_29
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/List;

    return-object v0
.end method

.method private runChildren(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 6
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 326
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->scheduler:Lorg/junit/runners/model/RunnerScheduler;

    .line 328
    .local v0, "currentScheduler":Lorg/junit/runners/model/RunnerScheduler;
    :try_start_2
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 329
    .local v2, "each":Ljava/lang/Object;, "TT;"
    new-instance v3, Lorg/junit/runners/ParentRunner$4;

    invoke-direct {v3, p0, v2, p1}, Lorg/junit/runners/ParentRunner$4;-><init>(Lorg/junit/runners/ParentRunner;Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V

    invoke-interface {v0, v3}, Lorg/junit/runners/model/RunnerScheduler;->schedule(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_22

    .line 334
    .end local v2    # "each":Ljava/lang/Object;, "TT;"
    goto :goto_a

    .line 336
    :cond_1d
    invoke-interface {v0}, Lorg/junit/runners/model/RunnerScheduler;->finished()V

    .line 337
    nop

    .line 338
    return-void

    .line 336
    :catchall_22
    move-exception v1

    invoke-interface {v0}, Lorg/junit/runners/model/RunnerScheduler;->finished()V

    .line 337
    throw v1
.end method

.method private shouldNotReorder()Z
    .registers 3

    .line 518
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    const-class v1, Lorg/junit/FixMethodOrder;

    invoke-virtual {v0, v1}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private shouldRun(Lorg/junit/runner/manipulation/Filter;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/manipulation/Filter;",
            "TT;)Z"
        }
    .end annotation

    .line 545
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p2, "each":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lorg/junit/runners/ParentRunner;->describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v0

    return v0
.end method

.method private validate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 522
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->collectInitializationErrors(Ljava/util/List;)V

    .line 524
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 527
    return-void

    .line 525
    :cond_f
    new-instance v1, Lorg/junit/runners/model/InvalidTestClassError;

    iget-object v2, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v2}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/junit/runners/model/InvalidTestClassError;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    throw v1
.end method

.method private validateClassRules(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->CLASS_RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    .line 184
    sget-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->CLASS_RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    .line 185
    return-void
.end method

.method private withClassRules(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 5
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .line 268
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->classRules()Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, "classRules":Ljava/util/List;, "Ljava/util/List<Lorg/junit/rules/TestRule;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, p1

    goto :goto_15

    .line 270
    :cond_c
    new-instance v1, Lorg/junit/rules/RunRules;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/rules/RunRules;-><init>(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)V

    .line 269
    :goto_15
    return-object v1
.end method


# virtual methods
.method protected childrenInvoker(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;
    .registers 3
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 290
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Lorg/junit/runners/ParentRunner$2;

    invoke-direct {v0, p0, p1}, Lorg/junit/runners/ParentRunner$2;-><init>(Lorg/junit/runners/ParentRunner;Lorg/junit/runner/notification/RunNotifier;)V

    return-object v0
.end method

.method protected classBlock(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;
    .registers 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 213
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->childrenInvoker(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 214
    .local v0, "statement":Lorg/junit/runners/model/Statement;
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->areAllChildrenIgnored()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 215
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->withBeforeClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->withAfterClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 217
    invoke-direct {p0, v0}, Lorg/junit/runners/ParentRunner;->withClassRules(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 218
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->withInterruptIsolation(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 220
    :cond_1a
    return-object v0
.end method

.method protected classRules()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/junit/runners/ParentRunner$ClassRuleCollector;-><init>(Lorg/junit/runners/ParentRunner$ClassRuleCollector-IA;)V

    .line 279
    .local v0, "collector":Lorg/junit/runners/ParentRunner$ClassRuleCollector;
    iget-object v2, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v3, Lorg/junit/ClassRule;

    const-class v4, Lorg/junit/rules/TestRule;

    invoke-virtual {v2, v1, v3, v4, v0}, Lorg/junit/runners/model/TestClass;->collectAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lorg/junit/runners/model/MemberValueConsumer;)V

    .line 280
    iget-object v2, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v3, Lorg/junit/ClassRule;

    const-class v4, Lorg/junit/rules/TestRule;

    invoke-virtual {v2, v1, v3, v4, v0}, Lorg/junit/runners/model/TestClass;->collectAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lorg/junit/runners/model/MemberValueConsumer;)V

    .line 281
    invoke-virtual {v0}, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->getOrderedRules()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected collectInitializationErrors(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const-class v0, Lorg/junit/BeforeClass;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/ParentRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 149
    const-class v0, Lorg/junit/AfterClass;

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/ParentRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 150
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->validateClassRules(Ljava/util/List;)V

    .line 151
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->applyValidators(Ljava/util/List;)V

    .line 152
    return-void
.end method

.method protected createTestClass(Ljava/lang/Class;)Lorg/junit/runners/model/TestClass;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runners/model/TestClass;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/runners/model/TestClass;

    invoke-direct {v0, p1}, Lorg/junit/runners/model/TestClass;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected abstract describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/junit/runner/Description;"
        }
    .end annotation
.end method

.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .registers 6
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 430
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 432
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 433
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 435
    .local v2, "each":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, v2}, Lorg/junit/runners/ParentRunner;->shouldRun(Lorg/junit/runner/manipulation/Filter;Ljava/lang/Object;)Z

    move-result v3
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_4a

    if-eqz v3, :cond_2b

    .line 437
    :try_start_22
    invoke-virtual {p1, v2}, Lorg/junit/runner/manipulation/Filter;->apply(Ljava/lang/Object;)V
    :try_end_25
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_22 .. :try_end_25} :catch_26
    .catchall {:try_start_22 .. :try_end_25} :catchall_4a

    .line 440
    :goto_25
    goto :goto_2e

    .line 438
    :catch_26
    move-exception v3

    .line 439
    .local v3, "e":Lorg/junit/runner/manipulation/NoTestsRemainException;
    :try_start_27
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .end local v3    # "e":Lorg/junit/runner/manipulation/NoTestsRemainException;
    goto :goto_25

    .line 442
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 444
    .end local v2    # "each":Ljava/lang/Object;, "TT;"
    :goto_2e
    goto :goto_12

    .line 445
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_2f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/List;

    .line 446
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_4a

    if-nez v1, :cond_44

    .line 450
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 451
    nop

    .line 452
    return-void

    .line 447
    .restart local v0    # "children":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_44
    :try_start_44
    new-instance v1, Lorg/junit/runner/manipulation/NoTestsRemainException;

    invoke-direct {v1}, Lorg/junit/runner/manipulation/NoTestsRemainException;-><init>()V

    .end local p0    # "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .end local p1    # "filter":Lorg/junit/runner/manipulation/Filter;
    throw v1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_4a

    .line 450
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local p0    # "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .restart local p1    # "filter":Lorg/junit/runner/manipulation/Filter;
    :catchall_4a
    move-exception v0

    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 451
    throw v0
.end method

.method protected abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .registers 6

    .line 390
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    .line 394
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_22

    .line 397
    :cond_19
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getRunnerAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v1

    .local v1, "description":Lorg/junit/runner/Description;
    goto :goto_2e

    .line 395
    .end local v1    # "description":Lorg/junit/runner/Description;
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getRunnerAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v1

    .line 400
    .restart local v1    # "description":Lorg/junit/runner/Description;
    :goto_2e
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 401
    .local v3, "child":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v3}, Lorg/junit/runners/ParentRunner;->describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    .line 402
    .end local v3    # "child":Ljava/lang/Object;, "TT;"
    goto :goto_36

    .line 403
    :cond_48
    return-object v1
.end method

.method protected getName()Ljava/lang/String;
    .registers 2

    .line 344
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRunnerAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 381
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getTestClass()Lorg/junit/runners/model/TestClass;
    .registers 2

    .line 355
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    return-object v0
.end method

.method protected isIgnored(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 322
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "child":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public order(Lorg/junit/runner/manipulation/Orderer;)V
    .registers 10
    .param p1, "orderer"    # Lorg/junit/runner/manipulation/Orderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/InvalidOrderingException;
        }
    .end annotation

    .line 478
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->shouldNotReorder()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 479
    return-void

    .line 482
    :cond_7
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 484
    :try_start_c
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

    move-result-object v0

    .line 487
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 488
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 489
    .local v1, "childMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/junit/runner/Description;Ljava/util/List<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 490
    .local v3, "child":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v3}, Lorg/junit/runners/ParentRunner;->describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object v4

    .line 491
    .local v4, "description":Lorg/junit/runner/Description;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 492
    .local v5, "childrenWithDescription":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v5, :cond_3d

    .line 493
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v6

    .line 494
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_3d
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {p1, v3}, Lorg/junit/runner/manipulation/Orderer;->apply(Ljava/lang/Object;)V

    .line 498
    .end local v3    # "child":Ljava/lang/Object;, "TT;"
    .end local v4    # "description":Lorg/junit/runner/Description;
    .end local v5    # "childrenWithDescription":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_1d

    .line 500
    :cond_44
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/junit/runner/manipulation/Orderer;->order(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 502
    .local v2, "inOrder":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Description;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    .line 503
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/junit/runner/Description;

    .line 504
    .restart local v4    # "description":Lorg/junit/runner/Description;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 505
    nop

    .end local v4    # "description":Lorg/junit/runner/Description;
    goto :goto_5a

    .line 506
    :cond_71
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/List;
    :try_end_77
    .catchall {:try_start_c .. :try_end_77} :catchall_7e

    .line 508
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "childMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/junit/runner/Description;Ljava/util/List<TT;>;>;"
    .end local v2    # "inOrder":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Description;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 509
    nop

    .line 510
    return-void

    .line 508
    :catchall_7e
    move-exception v0

    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 509
    throw v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 408
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Lorg/junit/internal/runners/model/EachTestNotifier;

    .line 409
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/junit/internal/runners/model/EachTestNotifier;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    .line 410
    .local v0, "testNotifier":Lorg/junit/internal/runners/model/EachTestNotifier;
    invoke-virtual {v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestSuiteStarted()V

    .line 412
    :try_start_c
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->classBlock(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 413
    .local v1, "statement":Lorg/junit/runners/model/Statement;
    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_13
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_c .. :try_end_13} :catch_1f
    .catch Lorg/junit/runner/notification/StoppedByUserException; {:try_start_c .. :try_end_13} :catch_1c
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 421
    .end local v1    # "statement":Lorg/junit/runners/model/Statement;
    :goto_13
    invoke-virtual {v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestSuiteFinished()V

    .line 422
    goto :goto_24

    .line 418
    :catchall_17
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_18
    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailure(Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_13

    .line 416
    :catch_1c
    move-exception v1

    .line 417
    .local v1, "e":Lorg/junit/runner/notification/StoppedByUserException;
    nop

    .end local v0    # "testNotifier":Lorg/junit/internal/runners/model/EachTestNotifier;
    .end local p0    # "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .end local p1    # "notifier":Lorg/junit/runner/notification/RunNotifier;
    throw v1

    .line 414
    .end local v1    # "e":Lorg/junit/runner/notification/StoppedByUserException;
    .restart local v0    # "testNotifier":Lorg/junit/internal/runners/model/EachTestNotifier;
    .restart local p0    # "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .restart local p1    # "notifier":Lorg/junit/runner/notification/RunNotifier;
    :catch_1f
    move-exception v1

    .line 415
    .local v1, "e":Lorg/junit/internal/AssumptionViolatedException;
    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailedAssumption(Lorg/junit/internal/AssumptionViolatedException;)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_25

    .end local v1    # "e":Lorg/junit/internal/AssumptionViolatedException;
    goto :goto_13

    .line 423
    :goto_24
    return-void

    .line 421
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestSuiteFinished()V

    .line 422
    throw v1
.end method

.method protected abstract runChild(Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/junit/runner/notification/RunNotifier;",
            ")V"
        }
    .end annotation
.end method

.method protected final runLeaf(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;Lorg/junit/runner/notification/RunNotifier;)V
    .registers 6
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;
    .param p3, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 363
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Lorg/junit/internal/runners/model/EachTestNotifier;

    invoke-direct {v0, p3, p2}, Lorg/junit/internal/runners/model/EachTestNotifier;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    .line 364
    .local v0, "eachNotifier":Lorg/junit/internal/runners/model/EachTestNotifier;
    invoke-virtual {v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestStarted()V

    .line 366
    :try_start_8
    invoke-virtual {p1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_b
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_8 .. :try_end_b} :catch_14
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    .line 372
    :goto_b
    invoke-virtual {v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    .line 373
    goto :goto_19

    .line 369
    :catchall_f
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_10
    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailure(Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_b

    .line 367
    :catch_14
    move-exception v1

    .line 368
    .local v1, "e":Lorg/junit/internal/AssumptionViolatedException;
    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailedAssumption(Lorg/junit/internal/AssumptionViolatedException;)V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1a

    .end local v1    # "e":Lorg/junit/internal/AssumptionViolatedException;
    goto :goto_b

    .line 374
    :goto_19
    return-void

    .line 372
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    .line 373
    throw v1
.end method

.method public setScheduler(Lorg/junit/runners/model/RunnerScheduler;)V
    .registers 2
    .param p1, "scheduler"    # Lorg/junit/runners/model/RunnerScheduler;

    .line 561
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iput-object p1, p0, Lorg/junit/runners/ParentRunner;->scheduler:Lorg/junit/runners/model/RunnerScheduler;

    .line 562
    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .registers 4
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;

    .line 455
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->shouldNotReorder()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 456
    return-void

    .line 459
    :cond_7
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 461
    :try_start_c
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 462
    .local v1, "each":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v1}, Lorg/junit/runner/manipulation/Sorter;->apply(Ljava/lang/Object;)V

    .line 463
    .end local v1    # "each":Ljava/lang/Object;, "TT;"
    goto :goto_14

    .line 464
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 465
    .local v0, "sortedChildren":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->comparator(Lorg/junit/runner/manipulation/Sorter;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 466
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/List;
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_3f

    .line 468
    .end local v0    # "sortedChildren":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 469
    nop

    .line 470
    return-void

    .line 468
    :catchall_3f
    move-exception v0

    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 469
    throw v0
.end method

.method protected validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V
    .registers 7
    .param p2, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/FrameworkMethod;

    .line 178
    .local v2, "eachTestMethod":Lorg/junit/runners/model/FrameworkMethod;
    invoke-virtual {v2, p2, p3}, Lorg/junit/runners/model/FrameworkMethod;->validatePublicVoidNoArg(ZLjava/util/List;)V

    .line 179
    .end local v2    # "eachTestMethod":Lorg/junit/runners/model/FrameworkMethod;
    goto :goto_c

    .line 180
    :cond_1c
    return-void
.end method

.method protected withAfterClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 5
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .line 252
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v1, Lorg/junit/AfterClass;

    .line 253
    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 254
    .local v0, "afters":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, p1

    goto :goto_16

    .line 255
    :cond_10
    new-instance v1, Lorg/junit/internal/runners/statements/RunAfters;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/internal/runners/statements/RunAfters;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    .line 254
    :goto_16
    return-object v1
.end method

.method protected withBeforeClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 5
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .line 238
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v1, Lorg/junit/BeforeClass;

    .line 239
    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, "befores":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, p1

    goto :goto_16

    .line 241
    :cond_10
    new-instance v1, Lorg/junit/internal/runners/statements/RunBefores;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/internal/runners/statements/RunBefores;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    .line 240
    :goto_16
    return-object v1
.end method

.method protected final withInterruptIsolation(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 3
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .line 302
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Lorg/junit/runners/ParentRunner$3;

    invoke-direct {v0, p0, p1}, Lorg/junit/runners/ParentRunner$3;-><init>(Lorg/junit/runners/ParentRunner;Lorg/junit/runners/model/Statement;)V

    return-object v0
.end method
