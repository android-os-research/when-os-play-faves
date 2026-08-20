.class Landroid/test/NoExecTestResult;
.super Ljunit/framework/TestResult;
.source "NoExecTestResult.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljunit/framework/TestResult;-><init>()V

    return-void
.end method


# virtual methods
.method protected run(Ljunit/framework/TestCase;)V
    .registers 2
    .param p1, "test"    # Ljunit/framework/TestCase;

    .line 36
    invoke-virtual {p0, p1}, Landroid/test/NoExecTestResult;->startTest(Ljunit/framework/Test;)V

    .line 37
    invoke-virtual {p0, p1}, Landroid/test/NoExecTestResult;->endTest(Ljunit/framework/Test;)V

    .line 38
    return-void
.end method
