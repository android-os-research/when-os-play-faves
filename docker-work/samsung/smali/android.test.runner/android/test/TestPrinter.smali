.class Landroid/test/TestPrinter;
.super Ljava/lang/Object;
.source "TestPrinter.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mFailedTests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlyFailures:Z

.field private mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "onlyFailures"    # Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    .line 44
    iput-object p1, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    .line 45
    iput-boolean p2, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    .line 46
    return-void
.end method

.method private failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 67
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    const-string v1, "----- begin exception -----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    const-string v1, "----- end exception -----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method private failed(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 74
    iget-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/test/TestPrinter;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method

.method private finished(Ljava/lang/String;)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;

    .line 55
    iget-boolean v0, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    if-nez v0, :cond_1c

    .line 56
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1c
    return-void
.end method

.method private passed(Ljava/lang/String;)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;

    .line 61
    iget-boolean v0, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    if-nez v0, :cond_1c

    .line 62
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1c
    return-void
.end method

.method private started(Ljava/lang/String;)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;

    .line 49
    iget-boolean v0, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    if-nez v0, :cond_1c

    .line 50
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1c
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/test/TestPrinter;->failed(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/test/TestPrinter;->failed(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/test/TestPrinter;->finished(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/test/TestPrinter;->passed(Ljava/lang/String;)V

    .line 91
    :cond_1a
    iget-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/Test;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/test/TestPrinter;->started(Ljava/lang/String;)V

    .line 96
    return-void
.end method
