.class Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;
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
    name = "SuiteAssignmentPrinter"
.end annotation


# instance fields
.field private mEndTime:J

.field private mStartTime:J

.field private mTestResult:Landroid/os/Bundle;

.field private mTimingValid:Z

.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;)V
    .registers 2

    .line 684
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    .line 700
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    .line 707
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 7
    .param p1, "test"    # Ljunit/framework/Test;

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mEndTime:J

    .line 716
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    .line 718
    iget-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    if-eqz v0, :cond_3f

    iget-wide v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1a

    goto :goto_3f

    .line 722
    :cond_1a
    iget-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mEndTime:J

    sub-long/2addr v2, v0

    long-to-float v0, v2

    .line 723
    .local v0, "runTime":F
    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_33

    const-class v1, Landroid/test/InstrumentationTestCase;

    .line 724
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 725
    const-string v1, "small"

    .local v1, "assignmentSuite":Ljava/lang/String;
    goto :goto_43

    .line 726
    .end local v1    # "assignmentSuite":Ljava/lang/String;
    :cond_33
    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3c

    .line 727
    const-string v1, "medium"

    .restart local v1    # "assignmentSuite":Ljava/lang/String;
    goto :goto_43

    .line 729
    .end local v1    # "assignmentSuite":Ljava/lang/String;
    :cond_3c
    const-string v1, "large"

    .restart local v1    # "assignmentSuite":Ljava/lang/String;
    goto :goto_43

    .line 719
    .end local v0    # "runTime":F
    .end local v1    # "assignmentSuite":Ljava/lang/String;
    :cond_3f
    :goto_3f
    const-string v1, "NA"

    .line 720
    .restart local v1    # "assignmentSuite":Ljava/lang/String;
    const/high16 v0, -0x40800000    # -1.0f

    .line 733
    .restart local v0    # "runTime":F
    :goto_43
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    .line 735
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljunit/framework/TestCase;

    invoke-virtual {v4}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " suite\nrunTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 738
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 735
    const-string v4, "stream"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "runtime"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 740
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "suiteassignment"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    .line 743
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    .line 693
    return-void
.end method
