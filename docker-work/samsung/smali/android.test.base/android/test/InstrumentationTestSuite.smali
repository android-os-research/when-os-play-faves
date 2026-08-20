.class public Landroid/test/InstrumentationTestSuite;
.super Ljunit/framework/TestSuite;
.source "InstrumentationTestSuite.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .registers 2
    .param p1, "instr"    # Landroid/app/Instrumentation;

    .line 43
    invoke-direct {p0}, Ljunit/framework/TestSuite;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/test/InstrumentationTestSuite;->mInstrumentation:Landroid/app/Instrumentation;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/app/Instrumentation;)V
    .registers 3
    .param p1, "theClass"    # Ljava/lang/Class;
    .param p2, "instr"    # Landroid/app/Instrumentation;

    .line 59
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    .line 60
    iput-object p2, p0, Landroid/test/InstrumentationTestSuite;->mInstrumentation:Landroid/app/Instrumentation;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Instrumentation;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "instr"    # Landroid/app/Instrumentation;

    .line 49
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Landroid/test/InstrumentationTestSuite;->mInstrumentation:Landroid/app/Instrumentation;

    .line 51
    return-void
.end method


# virtual methods
.method public addTestSuite(Ljava/lang/Class;)V
    .registers 4
    .param p1, "testClass"    # Ljava/lang/Class;

    .line 66
    new-instance v0, Landroid/test/InstrumentationTestSuite;

    iget-object v1, p0, Landroid/test/InstrumentationTestSuite;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-direct {v0, p1, v1}, Landroid/test/InstrumentationTestSuite;-><init>(Ljava/lang/Class;Landroid/app/Instrumentation;)V

    invoke-virtual {p0, v0}, Landroid/test/InstrumentationTestSuite;->addTest(Ljunit/framework/Test;)V

    .line 67
    return-void
.end method

.method public runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .registers 5
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "result"    # Ljunit/framework/TestResult;

    .line 73
    instance-of v0, p1, Landroid/test/InstrumentationTestCase;

    if-eqz v0, :cond_c

    .line 74
    move-object v0, p1

    check-cast v0, Landroid/test/InstrumentationTestCase;

    iget-object v1, p0, Landroid/test/InstrumentationTestSuite;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v1}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    .line 78
    :cond_c
    invoke-super {p0, p1, p2}, Ljunit/framework/TestSuite;->runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V

    .line 79
    return-void
.end method
