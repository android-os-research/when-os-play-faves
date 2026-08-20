.class Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
.super Ljava/lang/Object;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatcherResultPrinter"
.end annotation


# instance fields
.field private final mResultTemplate:Landroid/os/Bundle;

.field mTestClass:Ljava/lang/String;

.field mTestNum:I

.field mTestResult:Landroid/os/Bundle;

.field mTestResultCode:I

.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;I)V
    .registers 5
    .param p2, "numTests"    # I

    .line 756
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    const/4 p1, 0x0

    iput p1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    .line 753
    iput p1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 754
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 757
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    .line 758
    const-string v0, "id"

    const-string v1, "InstrumentationTestRunner"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "numtests"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 760
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 815
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stack"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const/4 v0, -0x1

    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 818
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljunit/framework/TestCase;

    .line 820
    invoke-virtual {v2}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 819
    const-string v2, "\nError in %s:\n%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 818
    const-string v2, "stream"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 7
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    .line 827
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stack"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/4 v0, -0x2

    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 830
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljunit/framework/TestCase;

    .line 832
    invoke-virtual {v2}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 831
    const-string v2, "\nFailure in %s:\n%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 830
    const-string v2, "stream"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 5
    .param p1, "test"    # Ljunit/framework/Test;

    .line 839
    iget v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    if-nez v0, :cond_d

    .line 840
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_d
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    iget v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    .line 845
    :try_start_16
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-static {v0}, Landroid/test/InstrumentationTestRunner;->-$$Nest$fgetmDelayMsec(Landroid/test/InstrumentationTestRunner;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_20} :catch_22

    .line 848
    nop

    .line 849
    return-void

    .line 846
    :catch_22
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 10
    .param p1, "test"    # Ljunit/framework/Test;

    .line 767
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "testClass":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Ljunit/framework/TestCase;

    invoke-virtual {v1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, "testName":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    .line 770
    const-string v3, "class"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "test"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    iget v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    const-string v5, "current"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    const-string v2, "stream"

    const/4 v3, 0x0

    if-eqz v0, :cond_50

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 775
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    .line 776
    const-string v7, "\n%s:"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 775
    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    goto :goto_57

    .line 779
    :cond_50
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, ""

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :goto_57
    const/4 v2, 0x0

    .line 784
    .local v2, "testMethod":Ljava/lang/reflect/Method;
    :try_start_58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v2, v5

    .line 786
    const-class v5, Landroid/test/RepetitiveTest;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 787
    const-class v5, Landroid/test/RepetitiveTest;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/test/RepetitiveTest;

    .line 788
    invoke-interface {v5}, Landroid/test/RepetitiveTest;->numIterations()I

    move-result v5

    .line 789
    .local v5, "numIterations":I
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v7, "numiterations"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_58 .. :try_end_7e} :catch_7f

    .line 794
    .end local v5    # "numIterations":I
    :cond_7e
    goto :goto_80

    .line 791
    :catch_7f
    move-exception v5

    .line 802
    :goto_80
    :try_start_80
    iget v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    if-ne v5, v4, :cond_8e

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-static {v5}, Landroid/test/InstrumentationTestRunner;->-$$Nest$fgetmDelayMsec(Landroid/test/InstrumentationTestRunner;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_8e} :catch_99

    .line 805
    :cond_8e
    nop

    .line 807
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v5, v4, v6}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    .line 808
    iput v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 809
    return-void

    .line 803
    :catch_99
    move-exception v3

    .line 804
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
