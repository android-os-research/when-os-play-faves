.class public Lorg/junit/internal/builders/SuiteMethodBuilder;
.super Lorg/junit/runners/model/RunnerBuilder;
.source "SuiteMethodBuilder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lorg/junit/runners/model/RunnerBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public hasSuiteMethod(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 18
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "suite"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_8} :catch_b

    .line 21
    nop

    .line 22
    const/4 v0, 0x1

    return v0

    .line 19
    :catch_b
    move-exception v1

    .line 20
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .registers 3
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

    .line 10
    .local p1, "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/junit/internal/builders/SuiteMethodBuilder;->hasSuiteMethod(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 11
    new-instance v0, Lorg/junit/internal/runners/SuiteMethod;

    invoke-direct {v0, p1}, Lorg/junit/internal/runners/SuiteMethod;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 13
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method
