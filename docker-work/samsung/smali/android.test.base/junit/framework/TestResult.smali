.class public Ljunit/framework/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# instance fields
.field protected fErrors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation
.end field

.field protected fFailures:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation
.end field

.field protected fListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field protected fRunTests:I

.field private fStop:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Ljunit/framework/TestResult;->fRunTests:I

    .line 34
    iput-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z

    .line 35
    return-void
.end method

.method private declared-synchronized cloneListeners()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestListener;>;"
    iget-object v1, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 72
    monitor-exit p0

    return-object v0

    .line 69
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestListener;>;"
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    new-instance v1, Ljunit/framework/TestFailure;

    invoke-direct {v1, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    .line 43
    .local v1, "each":Ljunit/framework/TestListener;
    invoke-interface {v1, p1, p2}, Ljunit/framework/TestListener;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    .end local v1    # "each":Ljunit/framework/TestListener;
    goto :goto_13

    .line 44
    .end local p0    # "this":Ljunit/framework/TestResult;
    :cond_23
    monitor-exit p0

    return-void

    .line 40
    .end local p1    # "test":Ljunit/framework/Test;
    .end local p2    # "t":Ljava/lang/Throwable;
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 5
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    new-instance v1, Ljunit/framework/TestFailure;

    invoke-direct {v1, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    .line 52
    .local v1, "each":Ljunit/framework/TestListener;
    invoke-interface {v1, p1, p2}, Ljunit/framework/TestListener;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    .end local v1    # "each":Ljunit/framework/TestListener;
    goto :goto_13

    .line 53
    .end local p0    # "this":Ljunit/framework/TestResult;
    :cond_23
    monitor-exit p0

    return-void

    .line 49
    .end local p1    # "test":Ljunit/framework/Test;
    .end local p2    # "t":Ljunit/framework/AssertionFailedError;
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addListener(Ljunit/framework/TestListener;)V
    .registers 3
    .param p1, "listener"    # Ljunit/framework/TestListener;

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 59
    monitor-exit p0

    return-void

    .line 57
    .end local p0    # "this":Ljunit/framework/TestResult;
    .end local p1    # "listener":Ljunit/framework/TestListener;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;

    .line 78
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    .line 79
    .local v1, "each":Ljunit/framework/TestListener;
    invoke-interface {v1, p1}, Ljunit/framework/TestListener;->endTest(Ljunit/framework/Test;)V

    .end local v1    # "each":Ljunit/framework/TestListener;
    goto :goto_8

    .line 80
    :cond_18
    return-void
.end method

.method public declared-synchronized errorCount()I
    .registers 2

    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 85
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized errors()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 91
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized failureCount()I
    .registers 2

    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 99
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized failures()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 105
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Ljunit/framework/TestListener;)V
    .registers 3
    .param p1, "listener"    # Ljunit/framework/TestListener;

    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 65
    monitor-exit p0

    return-void

    .line 63
    .end local p0    # "this":Ljunit/framework/TestResult;
    .end local p1    # "listener":Ljunit/framework/TestListener;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected run(Ljunit/framework/TestCase;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/TestCase;

    .line 112
    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->startTest(Ljunit/framework/Test;)V

    .line 113
    new-instance v0, Ljunit/framework/TestResult$1;

    invoke-direct {v0, p0, p1}, Ljunit/framework/TestResult$1;-><init>(Ljunit/framework/TestResult;Ljunit/framework/TestCase;)V

    .line 118
    .local v0, "p":Ljunit/framework/Protectable;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V

    .line 120
    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->endTest(Ljunit/framework/Test;)V

    .line 121
    return-void
.end method

.method public declared-synchronized runCount()I
    .registers 2

    monitor-enter p0

    .line 126
    :try_start_1
    iget v0, p0, Ljunit/framework/TestResult;->fRunTests:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 126
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "p"    # Ljunit/framework/Protectable;

    .line 133
    :try_start_0
    invoke-interface {p2}, Ljunit/framework/Protectable;->protect()V
    :try_end_3
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_3} :catch_b
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_3} :catch_9
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 143
    :goto_3
    goto :goto_10

    .line 141
    :catchall_4
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 138
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/ThreadDeath;
    throw v0

    .line 135
    .end local v0    # "e":Ljava/lang/ThreadDeath;
    :catch_b
    move-exception v0

    .line 136
    .local v0, "e":Ljunit/framework/AssertionFailedError;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    .end local v0    # "e":Ljunit/framework/AssertionFailedError;
    goto :goto_3

    .line 144
    :goto_10
    return-void
.end method

.method public declared-synchronized shouldStop()Z
    .registers 2

    monitor-enter p0

    .line 149
    :try_start_1
    iget-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 149
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 5
    .param p1, "test"    # Ljunit/framework/Test;

    .line 155
    invoke-interface {p1}, Ljunit/framework/Test;->countTestCases()I

    move-result v0

    .line 156
    .local v0, "count":I
    monitor-enter p0

    .line 157
    :try_start_5
    iget v1, p0, Ljunit/framework/TestResult;->fRunTests:I

    add-int/2addr v1, v0

    iput v1, p0, Ljunit/framework/TestResult;->fRunTests:I

    .line 158
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_24

    .line 159
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljunit/framework/TestListener;

    .line 160
    .local v2, "each":Ljunit/framework/TestListener;
    invoke-interface {v2, p1}, Ljunit/framework/TestListener;->startTest(Ljunit/framework/Test;)V

    .end local v2    # "each":Ljunit/framework/TestListener;
    goto :goto_13

    .line 161
    :cond_23
    return-void

    .line 158
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    .line 166
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 167
    monitor-exit p0

    return-void

    .line 165
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wasSuccessful()Z
    .registers 2

    monitor-enter p0

    .line 172
    :try_start_1
    invoke-virtual {p0}, Ljunit/framework/TestResult;->failureCount()I

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljunit/framework/TestResult;->errorCount()I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    .end local p0    # "this":Ljunit/framework/TestResult;
    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return v0

    .line 172
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
