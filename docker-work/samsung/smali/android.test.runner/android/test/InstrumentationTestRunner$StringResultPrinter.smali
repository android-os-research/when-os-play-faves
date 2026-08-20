.class Landroid/test/InstrumentationTestRunner$StringResultPrinter;
.super Ljunit/textui/ResultPrinter;
.source "InstrumentationTestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringResultPrinter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;Ljava/io/PrintStream;)V
    .registers 3
    .param p2, "writer"    # Ljava/io/PrintStream;

    .line 663
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    .line 664
    invoke-direct {p0, p2}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    .line 665
    return-void
.end method


# virtual methods
.method public declared-synchronized printResult(Ljunit/framework/TestResult;J)V
    .registers 4
    .param p1, "result"    # Ljunit/framework/TestResult;
    .param p2, "runTime"    # J

    monitor-enter p0

    .line 668
    :try_start_1
    invoke-virtual {p0, p2, p3}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->printHeader(J)V

    .line 669
    invoke-virtual {p0, p1}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->printFooter(Ljunit/framework/TestResult;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 670
    monitor-exit p0

    return-void

    .line 667
    .end local p0    # "this":Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    .end local p1    # "result":Ljunit/framework/TestResult;
    .end local p2    # "runTime":J
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
