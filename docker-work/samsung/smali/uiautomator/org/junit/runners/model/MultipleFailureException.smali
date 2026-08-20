.class public Lorg/junit/runners/model/MultipleFailureException;
.super Ljava/lang/Exception;
.source "MultipleFailureException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/junit/runners/model/MultipleFailureException;->fErrors:Ljava/util/List;

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 35
    .local v1, "error":Ljava/lang/Throwable;
    instance-of v2, v1, Lorg/junit/internal/AssumptionViolatedException;

    if-eqz v2, :cond_31

    .line 36
    new-instance v2, Lorg/junit/TestCouldNotBeSkippedException;

    move-object v3, v1

    check-cast v3, Lorg/junit/internal/AssumptionViolatedException;

    invoke-direct {v2, v3}, Lorg/junit/TestCouldNotBeSkippedException;-><init>(Lorg/junit/internal/AssumptionViolatedException;)V

    move-object v1, v2

    .line 38
    :cond_31
    iget-object v2, p0, Lorg/junit/runners/model/MultipleFailureException;->fErrors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v1    # "error":Ljava/lang/Throwable;
    goto :goto_18

    .line 40
    :cond_37
    return-void

    .line 30
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of Throwables must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertEmpty(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    .local p0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    return-void

    .line 91
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 92
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/junit/internal/Throwables;->rethrowAsException(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 102
    :cond_1a
    new-instance v0, Lorg/junit/internal/runners/model/MultipleFailureException;

    invoke-direct {v0, p0}, Lorg/junit/internal/runners/model/MultipleFailureException;-><init>(Ljava/util/List;)V

    throw v0
.end method


# virtual methods
.method public getFailures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/junit/runners/model/MultipleFailureException;->fErrors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 8

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/junit/runners/model/MultipleFailureException;->fErrors:Ljava/util/List;

    .line 49
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "There were %d errors:"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/junit/runners/model/MultipleFailureException;->fErrors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 51
    .local v3, "e":Ljava/lang/Throwable;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%n  %s(%s)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_21

    .line 53
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public printStackTrace()V
    .registers 3

    .line 58
    iget-object v0, p0, Lorg/junit/runners/model/MultipleFailureException;->fErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 59
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_6

    .line 61
    :cond_16
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/PrintStream;

    .line 65
    iget-object v0, p0, Lorg/junit/runners/model/MultipleFailureException;->fErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 66
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 67
    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_6

    .line 68
    :cond_16
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "s"    # Ljava/io/PrintWriter;

    .line 72
    iget-object v0, p0, Lorg/junit/runners/model/MultipleFailureException;->fErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 73
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 74
    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_6

    .line 75
    :cond_16
    return-void
.end method
