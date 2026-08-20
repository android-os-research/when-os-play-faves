.class public Lorg/junit/internal/runners/statements/RunAfters;
.super Lorg/junit/runners/model/Statement;
.source "RunAfters.java"


# instance fields
.field private final afters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final next:Lorg/junit/runners/model/Statement;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V
    .registers 4
    .param p1, "next"    # Lorg/junit/runners/model/Statement;
    .param p3, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 17
    .local p2, "afters":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/junit/internal/runners/statements/RunAfters;->next:Lorg/junit/runners/model/Statement;

    .line 19
    iput-object p2, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    .line 20
    iput-object p3, p0, Lorg/junit/internal/runners/statements/RunAfters;->target:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public evaluate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :try_start_5
    iget-object v1, p0, Lorg/junit/internal/runners/statements/RunAfters;->next:Lorg/junit/runners/model/Statement;

    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_26

    .line 31
    iget-object v1, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/FrameworkMethod;

    .line 33
    .local v2, "each":Lorg/junit/runners/model/FrameworkMethod;
    :try_start_1c
    invoke-virtual {p0, v2}, Lorg/junit/internal/runners/statements/RunAfters;->invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    .line 36
    goto :goto_24

    .line 34
    :catchall_20
    move-exception v3

    .line 35
    .local v3, "e":Ljava/lang/Throwable;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v2    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_24
    goto :goto_10

    .line 38
    :cond_25
    goto :goto_46

    .line 28
    :catchall_26
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_4a

    .line 31
    nop

    .end local v1    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/FrameworkMethod;

    .line 33
    .restart local v2    # "each":Lorg/junit/runners/model/FrameworkMethod;
    :try_start_3d
    invoke-virtual {p0, v2}, Lorg/junit/internal/runners/statements/RunAfters;->invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    .line 36
    goto :goto_45

    .line 34
    :catchall_41
    move-exception v3

    .line 35
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v2    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_45
    goto :goto_31

    .line 39
    :goto_46
    invoke-static {v0}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    .line 40
    return-void

    .line 31
    :catchall_4a
    move-exception v1

    iget-object v2, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runners/model/FrameworkMethod;

    .line 33
    .local v3, "each":Lorg/junit/runners/model/FrameworkMethod;
    :try_start_5d
    invoke-virtual {p0, v3}, Lorg/junit/internal/runners/statements/RunAfters;->invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    .line 36
    goto :goto_65

    .line 34
    :catchall_61
    move-exception v4

    .line 35
    .local v4, "e":Ljava/lang/Throwable;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v3    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_65
    goto :goto_51

    .line 38
    :cond_66
    throw v1
.end method

.method protected invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    .registers 4
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/junit/internal/runners/statements/RunAfters;->target:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method
