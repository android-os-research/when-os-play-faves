.class public Lorg/junit/internal/runners/ErrorReportingRunner;
.super Lorg/junit/runner/Runner;
.source "ErrorReportingRunner.java"


# instance fields
.field private final causes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final classNames:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .registers 5
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 21
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lorg/junit/internal/runners/ErrorReportingRunner;-><init>(Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 22
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;[Ljava/lang/Class;)V
    .registers 6
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 24
    .local p2, "testClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 25
    if-eqz p2, :cond_28

    array-length v0, p2

    if-eqz v0, :cond_28

    .line 28
    array-length v0, p2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1b

    aget-object v2, p2, v1

    .line 29
    .local v2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_13

    .line 28
    .end local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 30
    .restart local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Test class cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    .end local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    invoke-direct {p0, p2}, Lorg/junit/internal/runners/ErrorReportingRunner;->getClassNames([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->classNames:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/ErrorReportingRunner;->getCauses(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->causes:Ljava/util/List;

    .line 35
    return-void

    .line 26
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Test classes cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private describeCause()Lorg/junit/runner/Description;
    .registers 4

    .line 83
    iget-object v0, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->classNames:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "initializationError"

    invoke-static {v0, v2, v1}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method private getCauses(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 66
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_d

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/internal/runners/ErrorReportingRunner;->getCauses(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 69
    :cond_d
    instance-of v0, p1, Lorg/junit/runners/model/InvalidTestClassError;

    if-eqz v0, :cond_16

    .line 70
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 72
    :cond_16
    instance-of v0, p1, Lorg/junit/runners/model/InitializationError;

    if-eqz v0, :cond_22

    .line 73
    move-object v0, p1

    check-cast v0, Lorg/junit/runners/model/InitializationError;

    invoke-virtual {v0}, Lorg/junit/runners/model/InitializationError;->getCauses()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 75
    :cond_22
    instance-of v0, p1, Lorg/junit/internal/runners/InitializationError;

    if-eqz v0, :cond_2e

    .line 76
    move-object v0, p1

    check-cast v0, Lorg/junit/internal/runners/InitializationError;

    .line 77
    invoke-virtual {v0}, Lorg/junit/internal/runners/InitializationError;->getCauses()Ljava/util/List;

    move-result-object v0

    .line 76
    return-object v0

    .line 79
    :cond_2e
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private varargs getClassNames([Ljava/lang/Class;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 54
    .local p1, "testClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_20

    aget-object v3, p1, v2

    .line 56
    .local v3, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_16

    .line 57
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_16
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .end local v3    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 61
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private runCause(Ljava/lang/Throwable;Lorg/junit/runner/notification/RunNotifier;)V
    .registers 5
    .param p1, "child"    # Ljava/lang/Throwable;
    .param p2, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 87
    invoke-direct {p0}, Lorg/junit/internal/runners/ErrorReportingRunner;->describeCause()Lorg/junit/runner/Description;

    move-result-object v0

    .line 88
    .local v0, "description":Lorg/junit/runner/Description;
    invoke-virtual {p2, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 89
    new-instance v1, Lorg/junit/runner/notification/Failure;

    invoke-direct {v1, v0, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 90
    invoke-virtual {p2, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    .line 91
    return-void
.end method


# virtual methods
.method public getDescription()Lorg/junit/runner/Description;
    .registers 5

    .line 39
    iget-object v0, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->classNames:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v0

    .line 40
    .local v0, "description":Lorg/junit/runner/Description;
    iget-object v1, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->causes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 41
    .local v2, "each":Ljava/lang/Throwable;
    invoke-direct {p0}, Lorg/junit/internal/runners/ErrorReportingRunner;->describeCause()Lorg/junit/runner/Description;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    .line 42
    .end local v2    # "each":Ljava/lang/Throwable;
    goto :goto_f

    .line 43
    :cond_23
    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 48
    iget-object v0, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->causes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 49
    .local v1, "each":Ljava/lang/Throwable;
    invoke-direct {p0, v1, p1}, Lorg/junit/internal/runners/ErrorReportingRunner;->runCause(Ljava/lang/Throwable;Lorg/junit/runner/notification/RunNotifier;)V

    .line 50
    .end local v1    # "each":Ljava/lang/Throwable;
    goto :goto_6

    .line 51
    :cond_16
    return-void
.end method
