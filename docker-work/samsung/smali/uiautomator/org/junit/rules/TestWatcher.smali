.class public abstract Lorg/junit/rules/TestWatcher;
.super Ljava/lang/Object;
.source "TestWatcher.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# direct methods
.method static bridge synthetic -$$Nest$mfailedQuietly(Lorg/junit/rules/TestWatcher;Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/junit/rules/TestWatcher;->failedQuietly(Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishedQuietly(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->finishedQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mskippedQuietly(Lorg/junit/rules/TestWatcher;Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/junit/rules/TestWatcher;->skippedQuietly(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartingQuietly(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->startingQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msucceededQuietly(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->succeededQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private failedQuietly(Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->failed(Ljava/lang/Throwable;Lorg/junit/runner/Description;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 93
    goto :goto_8

    .line 91
    :catchall_4
    move-exception v0

    .line 92
    .local v0, "e1":Ljava/lang/Throwable;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v0    # "e1":Ljava/lang/Throwable;
    :goto_8
    return-void
.end method

.method private finishedQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 4
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/junit/rules/TestWatcher;->finished(Lorg/junit/runner/Description;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 125
    goto :goto_8

    .line 123
    :catchall_4
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8
    return-void
.end method

.method private skippedQuietly(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 5
    .param p1, "e"    # Lorg/junit/internal/AssumptionViolatedException;
    .param p2, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/internal/AssumptionViolatedException;",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :try_start_0
    instance-of v0, p1, Lorg/junit/AssumptionViolatedException;

    if-eqz v0, :cond_b

    .line 101
    move-object v0, p1

    check-cast v0, Lorg/junit/AssumptionViolatedException;

    invoke-virtual {p0, v0, p2}, Lorg/junit/rules/TestWatcher;->skipped(Lorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V

    goto :goto_e

    .line 103
    :cond_b
    invoke-virtual {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->skipped(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    .line 107
    :goto_e
    goto :goto_13

    .line 105
    :catchall_f
    move-exception v0

    .line 106
    .local v0, "e1":Ljava/lang/Throwable;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v0    # "e1":Ljava/lang/Throwable;
    :goto_13
    return-void
.end method

.method private startingQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 4
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/junit/rules/TestWatcher;->starting(Lorg/junit/runner/Description;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 116
    goto :goto_8

    .line 114
    :catchall_4
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8
    return-void
.end method

.method private succeededQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 4
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/junit/rules/TestWatcher;->succeeded(Lorg/junit/runner/Description;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 84
    goto :goto_8

    .line 82
    :catchall_4
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8
    return-void
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .registers 4
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .line 54
    new-instance v0, Lorg/junit/rules/TestWatcher$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/junit/rules/TestWatcher$1;-><init>(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Lorg/junit/runners/model/Statement;)V

    return-object v0
.end method

.method protected failed(Ljava/lang/Throwable;Lorg/junit/runner/Description;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .line 138
    return-void
.end method

.method protected finished(Lorg/junit/runner/Description;)V
    .registers 2
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 169
    return-void
.end method

.method protected skipped(Lorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    .registers 4
    .param p1, "e"    # Lorg/junit/AssumptionViolatedException;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .line 145
    move-object v0, p1

    .line 146
    .local v0, "asInternalException":Lorg/junit/internal/AssumptionViolatedException;
    invoke-virtual {p0, v0, p2}, Lorg/junit/rules/TestWatcher;->skipped(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;)V

    .line 147
    return-void
.end method

.method protected skipped(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    .registers 3
    .param p1, "e"    # Lorg/junit/internal/AssumptionViolatedException;
    .param p2, "description"    # Lorg/junit/runner/Description;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    return-void
.end method

.method protected starting(Lorg/junit/runner/Description;)V
    .registers 2
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 163
    return-void
.end method

.method protected succeeded(Lorg/junit/runner/Description;)V
    .registers 2
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 132
    return-void
.end method
