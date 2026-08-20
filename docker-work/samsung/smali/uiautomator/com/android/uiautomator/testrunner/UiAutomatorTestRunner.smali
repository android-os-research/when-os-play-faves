.class public Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;
    }
.end annotation


# static fields
.field private static final EXIT_EXCEPTION:I = -0x1

.field private static final EXIT_OK:I = 0x0

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "UiAutomatorHandlerThread"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

.field private mDebug:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMonkey:Z

.field private mParams:Landroid/os/Bundle;

.field private mTestClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUiDevice:Lcom/android/uiautomator/core/UiDevice;

.field private final mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutomationSupport(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;
    .registers 1

    iget-object p0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWatcher(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOGTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    .line 66
    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    .line 67
    new-instance v1, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    invoke-direct {v1, p0, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher-IA;)V

    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    .line 68
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected addTestListener(Ljunit/framework/TestListener;)V
    .registers 3
    .param p1, "listener"    # Ljunit/framework/TestListener;

    .line 412
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 413
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_d
    return-void
.end method

.method protected getTestCaseCollector(Ljava/lang/ClassLoader;)Lcom/android/uiautomator/testrunner/TestCaseCollector;
    .registers 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 399
    new-instance v0, Lcom/android/uiautomator/testrunner/TestCaseCollector;

    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseFilter()Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/uiautomator/testrunner/TestCaseCollector;-><init>(Ljava/lang/ClassLoader;Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;)V

    return-object v0
.end method

.method public getTestCaseFilter()Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;
    .registers 2

    .line 408
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    invoke-direct {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;-><init>()V

    return-object v0
.end method

.method protected prepareTestCase(Ljunit/framework/TestCase;)V
    .registers 4
    .param p1, "testCase"    # Ljunit/framework/TestCase;

    .line 427
    move-object v0, p1

    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setAutomationSupport(Lcom/android/uiautomator/testrunner/IAutomationSupport;)V

    .line 428
    move-object v0, p1

    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setUiDevice(Lcom/android/uiautomator/core/UiDevice;)V

    .line 429
    move-object v0, p1

    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setParams(Landroid/os/Bundle;)V

    .line 430
    return-void
.end method

.method protected removeTestListener(Ljunit/framework/TestListener;)V
    .registers 3
    .param p1, "listener"    # Ljunit/framework/TestListener;

    .line 418
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method public run(Ljava/util/List;Landroid/os/Bundle;ZZ)V
    .registers 6
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "debug"    # Z
    .param p4, "monkey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "ZZ)V"
        }
    .end annotation

    .line 79
    .local p1, "testClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 92
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    .line 94
    iput-boolean p3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mDebug:Z

    .line 95
    iput-boolean p4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mMonkey:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->start()V

    .line 97
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 98
    return-void
.end method

.method protected start()V
    .registers 16

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseCollector(Ljava/lang/ClassLoader;)Lcom/android/uiautomator/testrunner/TestCaseCollector;

    move-result-object v0

    .line 106
    .local v0, "collector":Lcom/android/uiautomator/testrunner/TestCaseCollector;
    :try_start_c
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addTestClasses(Ljava/util/List;)V
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_122

    .line 110
    nop

    .line 111
    iget-boolean v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mDebug:Z

    if-eqz v1, :cond_19

    .line 112
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 114
    :cond_19
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UiAutomatorHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    .line 115
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 116
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 117
    new-instance v1, Lcom/android/uiautomator/core/UiAutomationShellWrapper;

    invoke-direct {v1}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;-><init>()V

    .line 118
    .local v1, "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->connect()V

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 121
    .local v3, "startTime":J
    new-instance v5, Ljunit/framework/TestResult;

    invoke-direct {v5}, Ljunit/framework/TestResult;-><init>()V

    .line 123
    .local v5, "testRunResult":Ljunit/framework/TestResult;
    iget-object v6, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    const-string v7, "outputFormat"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "outputFormat":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->getTestCases()Ljava/util/List;

    move-result-object v7

    .line 125
    .local v7, "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestCase;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v8, "testRunOutput":Landroid/os/Bundle;
    const-string v9, "simple"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 127
    new-instance v9, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v9, p0, v10, v2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;Z)V

    move-object v2, v9

    .local v2, "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    goto :goto_67

    .line 129
    .end local v2    # "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    :cond_5e
    new-instance v2, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v2, p0, v9}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;I)V

    .line 132
    .restart local v2    # "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    :goto_67
    const/4 v9, 0x0

    :try_start_68
    iget-boolean v10, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mMonkey:Z

    invoke-virtual {v1, v10}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setRunAsMonkey(Z)V

    .line 133
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v10

    iput-object v10, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    .line 134
    new-instance v11, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;-><init>(Landroid/app/UiAutomation;)V

    invoke-virtual {v10, v11}, Lcom/android/uiautomator/core/UiDevice;->initialize(Lcom/android/uiautomator/core/UiAutomatorBridge;)V

    .line 136
    iget-object v10, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    const-string v11, "traceOutputMode"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "traceType":Ljava/lang/String;
    if-eqz v10, :cond_ba

    .line 138
    const-class v11, Lcom/android/uiautomator/core/Tracer$Mode;

    invoke-static {v11, v10}, Lcom/android/uiautomator/core/Tracer$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v11

    check-cast v11, Lcom/android/uiautomator/core/Tracer$Mode;

    .line 139
    .local v11, "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    sget-object v12, Lcom/android/uiautomator/core/Tracer$Mode;->FILE:Lcom/android/uiautomator/core/Tracer$Mode;

    if-eq v11, v12, :cond_99

    sget-object v12, Lcom/android/uiautomator/core/Tracer$Mode;->ALL:Lcom/android/uiautomator/core/Tracer$Mode;

    if-ne v11, v12, :cond_aa

    .line 140
    :cond_99
    iget-object v12, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    const-string v13, "traceLogFilename"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, "filename":Ljava/lang/String;
    if-eqz v12, :cond_b2

    .line 145
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getInstance()Lcom/android/uiautomator/core/Tracer;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/uiautomator/core/Tracer;->setOutputFilename(Ljava/lang/String;)V

    .line 147
    .end local v12    # "filename":Ljava/lang/String;
    :cond_aa
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getInstance()Lcom/android/uiautomator/core/Tracer;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/android/uiautomator/core/Tracer;->setOutputMode(Lcom/android/uiautomator/core/Tracer$Mode;)V

    goto :goto_ba

    .line 142
    .restart local v12    # "filename":Ljava/lang/String;
    :cond_b2
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Name of log file not specified. Please specify it using traceLogFilename parameter"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "collector":Lcom/android/uiautomator/testrunner/TestCaseCollector;
    .end local v1    # "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    .end local v2    # "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    .end local v3    # "startTime":J
    .end local v5    # "testRunResult":Ljunit/framework/TestResult;
    .end local v6    # "outputFormat":Ljava/lang/String;
    .end local v7    # "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestCase;>;"
    .end local v8    # "testRunOutput":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    throw v13

    .line 151
    .end local v11    # "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    .end local v12    # "filename":Ljava/lang/String;
    .restart local v0    # "collector":Lcom/android/uiautomator/testrunner/TestCaseCollector;
    .restart local v1    # "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    .restart local v2    # "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    .restart local v3    # "startTime":J
    .restart local v5    # "testRunResult":Ljunit/framework/TestResult;
    .restart local v6    # "outputFormat":Ljava/lang/String;
    .restart local v7    # "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestCase;>;"
    .restart local v8    # "testRunOutput":Landroid/os/Bundle;
    .restart local p0    # "this":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    :cond_ba
    :goto_ba
    invoke-virtual {v5, v2}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 153
    iget-object v11, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljunit/framework/TestListener;

    .line 154
    .local v12, "listener":Ljunit/framework/TestListener;
    invoke-virtual {v5, v12}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 155
    .end local v12    # "listener":Ljunit/framework/TestListener;
    goto :goto_c3

    .line 158
    :cond_d3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_d7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ea

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljunit/framework/TestCase;

    .line 159
    .local v12, "testCase":Ljunit/framework/TestCase;
    invoke-virtual {p0, v12}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->prepareTestCase(Ljunit/framework/TestCase;)V

    .line 160
    invoke-virtual {v12, v5}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V
    :try_end_e9
    .catchall {:try_start_68 .. :try_end_e9} :catchall_eb

    .line 161
    .end local v12    # "testCase":Ljunit/framework/TestCase;
    goto :goto_d7

    .line 158
    .end local v10    # "traceType":Ljava/lang/String;
    :cond_ea
    goto :goto_f8

    .line 162
    :catchall_eb
    move-exception v10

    .line 164
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_ec
    invoke-interface {v2, v10}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->printUnexpectedError(Ljava/lang/Throwable;)V

    .line 165
    const-string v11, "shortMsg"

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_ec .. :try_end_f8} :catchall_10d

    .line 167
    .end local v10    # "t":Ljava/lang/Throwable;
    :goto_f8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    .line 168
    .local v10, "runTime":J
    invoke-interface {v2, v5, v10, v11, v8}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    .line 169
    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 170
    invoke-virtual {v1, v9}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setRunAsMonkey(Z)V

    .line 171
    iget-object v9, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    .line 172
    .end local v10    # "runTime":J
    nop

    .line 173
    return-void

    .line 167
    :catchall_10d
    move-exception v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    .line 168
    .local v11, "runTime":J
    invoke-interface {v2, v5, v11, v12, v8}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    .line 169
    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 170
    invoke-virtual {v1, v9}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setRunAsMonkey(Z)V

    .line 171
    iget-object v9, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    .line 172
    .end local v11    # "runTime":J
    throw v10

    .line 107
    .end local v1    # "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    .end local v2    # "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    .end local v3    # "startTime":J
    .end local v5    # "testRunResult":Ljunit/framework/TestResult;
    .end local v6    # "outputFormat":Ljava/lang/String;
    .end local v7    # "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestCase;>;"
    .end local v8    # "testRunOutput":Landroid/os/Bundle;
    :catch_122
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
