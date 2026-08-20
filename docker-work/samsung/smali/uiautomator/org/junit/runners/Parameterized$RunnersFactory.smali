.class Lorg/junit/runners/Parameterized$RunnersFactory;
.super Ljava/lang/Object;
.source "Parameterized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/Parameterized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnersFactory"
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lorg/junit/runners/parameterized/ParametersRunnerFactory;


# instance fields
.field private final allParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterCount:I

.field private final parametersMethod:Lorg/junit/runners/model/FrameworkMethod;

.field private final runnerOverride:Lorg/junit/runner/Runner;

.field private final testClass:Lorg/junit/runners/model/TestClass;


# direct methods
.method static bridge synthetic -$$Nest$fgetparameterCount(Lorg/junit/runners/Parameterized$RunnersFactory;)I
    .registers 1

    iget p0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parameterCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateRunners(Lorg/junit/runners/Parameterized$RunnersFactory;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lorg/junit/runners/Parameterized$RunnersFactory;->createRunners()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 361
    new-instance v0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParametersFactory;

    invoke-direct {v0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParametersFactory;-><init>()V

    sput-object v0, Lorg/junit/runners/Parameterized$RunnersFactory;->DEFAULT_FACTORY:Lorg/junit/runners/parameterized/ParametersRunnerFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 369
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v0, Lorg/junit/runners/model/TestClass;

    invoke-direct {v0, p1}, Lorg/junit/runners/model/TestClass;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->testClass:Lorg/junit/runners/model/TestClass;

    .line 371
    invoke-static {v0}, Lorg/junit/runners/Parameterized$RunnersFactory;->getParametersMethod(Lorg/junit/runners/model/TestClass;)Lorg/junit/runners/model/FrameworkMethod;

    move-result-object v1

    iput-object v1, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethod:Lorg/junit/runners/model/FrameworkMethod;

    .line 373
    const/4 v2, 0x0

    .line 375
    .local v2, "assumptionViolationRunner":Lorg/junit/runners/Parameterized$AssumptionViolationRunner;
    :try_start_11
    invoke-static {v0, v1}, Lorg/junit/runners/Parameterized$RunnersFactory;->allParameters(Lorg/junit/runners/model/TestClass;Lorg/junit/runners/model/FrameworkMethod;)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_11 .. :try_end_15} :catch_16

    .line 380
    .local v0, "allParametersResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_2a

    .line 376
    .end local v0    # "allParametersResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_16
    move-exception v0

    .line 377
    .local v0, "e":Lorg/junit/internal/AssumptionViolatedException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 378
    .local v1, "allParametersResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v3, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;

    iget-object v4, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->testClass:Lorg/junit/runners/model/TestClass;

    iget-object v5, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethod:Lorg/junit/runners/model/FrameworkMethod;

    .line 379
    invoke-virtual {v5}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;-><init>(Lorg/junit/runners/model/TestClass;Ljava/lang/String;Lorg/junit/internal/AssumptionViolatedException;)V

    move-object v2, v3

    move-object v0, v1

    .line 381
    .end local v1    # "allParametersResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v0, "allParametersResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_2a
    iput-object v0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->allParameters:Ljava/util/List;

    .line 382
    iput-object v2, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->runnerOverride:Lorg/junit/runner/Runner;

    .line 383
    nop

    .line 384
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    goto :goto_40

    :cond_37
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/runners/Parameterized$RunnersFactory;->normalizeParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    array-length v3, v1

    :goto_40
    iput v3, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parameterCount:I

    .line 385
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lorg/junit/runners/Parameterized$RunnersFactory-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/junit/runners/Parameterized$RunnersFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static allParameters(Lorg/junit/runners/model/TestClass;Lorg/junit/runners/model/FrameworkMethod;)Ljava/util/List;
    .registers 6
    .param p0, "testClass"    # Lorg/junit/runners/model/TestClass;
    .param p1, "parametersMethod"    # Lorg/junit/runners/model/FrameworkMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/TestClass;",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 424
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    .local v0, "parameters":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_10

    .line 426
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 427
    :cond_10
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1d

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 429
    :cond_1d
    instance-of v1, v0, Ljava/lang/Iterable;

    if-eqz v1, :cond_3c

    .line 430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 432
    .local v3, "entry":Ljava/lang/Object;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    .end local v3    # "entry":Ljava/lang/Object;
    goto :goto_2d

    .line 434
    :cond_3b
    return-object v1

    .line 435
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3c
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_48

    .line 436
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 438
    :cond_48
    invoke-static {p0, p1}, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethodReturnedWrongType(Lorg/junit/runners/model/TestClass;Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method private createRunners()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->runnerOverride:Lorg/junit/runner/Runner;

    if-eqz v0, :cond_9

    .line 389
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 391
    :cond_9
    iget-object v0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethod:Lorg/junit/runners/model/FrameworkMethod;

    const-class v1, Lorg/junit/runners/Parameterized$Parameters;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/Parameterized$Parameters;

    .line 392
    .local v0, "parameters":Lorg/junit/runners/Parameterized$Parameters;
    iget-object v1, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->allParameters:Ljava/util/List;

    .line 393
    invoke-interface {v0}, Lorg/junit/runners/Parameterized$Parameters;->name()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-direct {p0}, Lorg/junit/runners/Parameterized$RunnersFactory;->getParametersRunnerFactory()Lorg/junit/runners/parameterized/ParametersRunnerFactory;

    move-result-object v3

    .line 392
    invoke-direct {p0, v1, v2, v3}, Lorg/junit/runners/Parameterized$RunnersFactory;->createRunnersForParameters(Ljava/lang/Iterable;Ljava/lang/String;Lorg/junit/runners/parameterized/ParametersRunnerFactory;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private createRunnersForParameters(Ljava/lang/Iterable;Ljava/lang/String;Lorg/junit/runners/parameterized/ParametersRunnerFactory;)Ljava/util/List;
    .registers 9
    .param p2, "namePattern"    # Ljava/lang/String;
    .param p3, "runnerFactory"    # Lorg/junit/runners/parameterized/ParametersRunnerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/junit/runners/parameterized/ParametersRunnerFactory;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 459
    .local p1, "allParameters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/junit/runners/Parameterized$RunnersFactory;->createTestsForParameters(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 461
    .local v0, "tests":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/parameterized/TestWithParameters;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v1, "runners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Runner;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runners/parameterized/TestWithParameters;

    .line 463
    .local v3, "test":Lorg/junit/runners/parameterized/TestWithParameters;
    nop

    .line 464
    invoke-interface {p3, v3}, Lorg/junit/runners/parameterized/ParametersRunnerFactory;->createRunnerForTestWithParameters(Lorg/junit/runners/parameterized/TestWithParameters;)Lorg/junit/runner/Runner;

    move-result-object v4

    .line 463
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_21} :catch_24

    .line 465
    nop

    .end local v3    # "test":Lorg/junit/runners/parameterized/TestWithParameters;
    goto :goto_d

    .line 466
    :cond_23
    return-object v1

    .line 467
    .end local v0    # "tests":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/parameterized/TestWithParameters;>;"
    .end local v1    # "runners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Runner;>;"
    :catch_24
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v1, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->testClass:Lorg/junit/runners/model/TestClass;

    iget-object v2, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethod:Lorg/junit/runners/model/FrameworkMethod;

    invoke-static {v1, v2}, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethodReturnedWrongType(Lorg/junit/runners/model/TestClass;Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method private createTestWithNotNormalizedParameters(Ljava/lang/String;ILjava/lang/Object;)Lorg/junit/runners/parameterized/TestWithParameters;
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "parametersOrSingleParameter"    # Ljava/lang/Object;

    .line 412
    invoke-static {p3}, Lorg/junit/runners/Parameterized$RunnersFactory;->normalizeParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 413
    .local v0, "parameters":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/junit/runners/Parameterized$RunnersFactory;->createTestWithParameters(Lorg/junit/runners/model/TestClass;Ljava/lang/String;I[Ljava/lang/Object;)Lorg/junit/runners/parameterized/TestWithParameters;

    move-result-object v1

    return-object v1
.end method

.method private createTestWithParameters(Lorg/junit/runners/model/TestClass;Ljava/lang/String;I[Ljava/lang/Object;)Lorg/junit/runners/parameterized/TestWithParameters;
    .registers 10
    .param p1, "testClass"    # Lorg/junit/runners/model/TestClass;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "parameters"    # [Ljava/lang/Object;

    .line 497
    nop

    .line 498
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 497
    const-string v1, "\\{index\\}"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "finalPattern":Ljava/lang/String;
    invoke-static {v0, p4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Lorg/junit/runners/parameterized/TestWithParameters;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lorg/junit/runners/parameterized/TestWithParameters;-><init>(Ljava/lang/String;Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    .line 500
    return-object v2
.end method

.method private createTestsForParameters(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p2, "namePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/runners/parameterized/TestWithParameters;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    .local p1, "allParameters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 476
    .local v0, "i":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/parameterized/TestWithParameters;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 478
    .local v3, "parametersOfSingleTest":Ljava/lang/Object;
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    invoke-direct {p0, p2, v0, v3}, Lorg/junit/runners/Parameterized$RunnersFactory;->createTestWithNotNormalizedParameters(Ljava/lang/String;ILjava/lang/Object;)Lorg/junit/runners/parameterized/TestWithParameters;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    .end local v3    # "parametersOfSingleTest":Ljava/lang/Object;
    move v0, v4

    goto :goto_a

    .line 481
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_1f
    return-object v1
.end method

.method private static getParametersMethod(Lorg/junit/runners/model/TestClass;)Lorg/junit/runners/model/FrameworkMethod;
    .registers 5
    .param p0, "testClass"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 443
    const-class v0, Lorg/junit/runners/Parameterized$Parameters;

    .line 444
    invoke-virtual {p0, v0}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 445
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/FrameworkMethod;

    .line 446
    .local v2, "each":Lorg/junit/runners/model/FrameworkMethod;
    invoke-virtual {v2}, Lorg/junit/runners/model/FrameworkMethod;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Lorg/junit/runners/model/FrameworkMethod;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 447
    return-object v2

    .line 449
    .end local v2    # "each":Lorg/junit/runners/model/FrameworkMethod;
    :cond_23
    goto :goto_a

    .line 451
    :cond_24
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No public static parameters method on class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 452
    invoke-virtual {p0}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getParametersRunnerFactory()Lorg/junit/runners/parameterized/ParametersRunnerFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v1, Lorg/junit/runners/Parameterized$UseParametersRunnerFactory;

    .line 400
    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/Parameterized$UseParametersRunnerFactory;

    .line 401
    .local v0, "annotation":Lorg/junit/runners/Parameterized$UseParametersRunnerFactory;
    if-nez v0, :cond_f

    .line 402
    sget-object v1, Lorg/junit/runners/Parameterized$RunnersFactory;->DEFAULT_FACTORY:Lorg/junit/runners/parameterized/ParametersRunnerFactory;

    return-object v1

    .line 404
    :cond_f
    nop

    .line 405
    invoke-interface {v0}, Lorg/junit/runners/Parameterized$UseParametersRunnerFactory;->value()Ljava/lang/Class;

    move-result-object v1

    .line 406
    .local v1, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runners/parameterized/ParametersRunnerFactory;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/parameterized/ParametersRunnerFactory;

    return-object v2
.end method

.method private static normalizeParameters(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .param p0, "parametersOrSingleParameter"    # Ljava/lang/Object;

    .line 417
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_e

    .line 418
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 417
    :goto_e
    return-object v0
.end method

.method private static parametersMethodReturnedWrongType(Lorg/junit/runners/model/TestClass;Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/Exception;
    .registers 6
    .param p0, "testClass"    # Lorg/junit/runners/model/TestClass;
    .param p1, "parametersMethod"    # Lorg/junit/runners/model/FrameworkMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v3, "{0}.{1}() must return an Iterable of arrays."

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v3
.end method
