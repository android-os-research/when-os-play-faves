.class public Landroid/test/AndroidTestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "AndroidTestRunner.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mSkipExecution:Z

.field private mTestCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private mTestClassName:Ljava/lang/String;

.field private mTestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTestResult:Ljunit/framework/TestResult;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    return-void
.end method

.method private buildSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;
    .registers 7
    .param p1, "testClass"    # Ljava/lang/Class;
    .param p2, "testMethodName"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 102
    .local v1, "c":Ljava/lang/reflect/Constructor;
    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/test/AndroidTestRunner;->newSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljunit/framework/TestCase;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    .line 103
    .end local v1    # "c":Ljava/lang/reflect/Constructor;
    :catch_e
    move-exception v1

    .line 107
    const/4 v1, 0x1

    :try_start_10
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 108
    .local v2, "c":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/test/AndroidTestRunner;->newSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljunit/framework/TestCase;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_22} :catch_23

    return-object v0

    .line 109
    .end local v2    # "c":Ljava/lang/reflect/Constructor;
    :catch_23
    move-exception v0

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTest(Ljava/lang/Class;)Ljunit/framework/Test;
    .registers 5
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 139
    const-class v0, Landroid/test/TestSuiteProvider;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 141
    const/4 v0, 0x0

    :try_start_9
    new-array v1, v0, [Ljava/lang/Class;

    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/test/TestSuiteProvider;

    .line 143
    .local v0, "testSuiteProvider":Landroid/test/TestSuiteProvider;
    invoke-interface {v0}, Landroid/test/TestSuiteProvider;->getTestSuite()Ljunit/framework/TestSuite;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_1b} :catch_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_1b} :catch_54
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_1b} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_1b} :catch_1c

    return-object v1

    .line 150
    .end local v0    # "testSuiteProvider":Landroid/test/TestSuiteProvider;
    :catch_1c
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such method on test suite provider. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_8b

    .line 148
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_38
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invocation exception test suite provider. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_8b

    .line 146
    :catch_54
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal access of test suite provider. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_8b

    .line 144
    :catch_70
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate test suite provider. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .line 154
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_8b
    :goto_8b
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/test/AndroidTestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v0

    return-object v0
.end method

.method private loadTestClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .param p1, "testClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .line 92
    :try_start_0
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 93
    :catch_b
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find test class. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .line 96
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private varargs newSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljunit/framework/TestCase;
    .registers 8
    .param p1, "testClass"    # Ljava/lang/Class;
    .param p2, "testMethodName"    # Ljava/lang/String;
    .param p3, "constructor"    # Ljava/lang/reflect/Constructor;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 118
    :try_start_0
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/TestCase;

    .line 119
    .local v0, "testCase":Ljunit/framework/TestCase;
    invoke-virtual {v0, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_5e
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_a

    .line 120
    return-object v0

    .line 127
    .end local v0    # "testCase":Ljunit/framework/TestCase;
    :catch_a
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor threw an exception. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_7a

    .line 125
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_26
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument passed to constructor. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_79

    .line 123
    :catch_42
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate test class. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_79

    .line 121
    :catch_5e
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not access test class. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .line 129
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_79
    nop

    .line 130
    :goto_7a
    const/4 v0, 0x0

    return-object v0
.end method

.method private setContextIfAndroidTestCase(Ljunit/framework/Test;Landroid/content/Context;Landroid/content/Context;)V
    .registers 6
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "testContext"    # Landroid/content/Context;

    .line 200
    const-class v0, Landroid/test/AndroidTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 201
    move-object v0, p1

    check-cast v0, Landroid/test/AndroidTestCase;

    invoke-virtual {v0, p2}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V

    .line 202
    move-object v0, p1

    check-cast v0, Landroid/test/AndroidTestCase;

    invoke-virtual {v0, p3}, Landroid/test/AndroidTestCase;->setTestContext(Landroid/content/Context;)V

    .line 204
    :cond_18
    return-void
.end method

.method private setInstrumentationIfInstrumentationTestCase(Ljunit/framework/Test;Landroid/app/Instrumentation;)V
    .registers 5
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    .line 212
    const-class v0, Landroid/test/InstrumentationTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 213
    move-object v0, p1

    check-cast v0, Landroid/test/InstrumentationTestCase;

    invoke-virtual {v0, p2}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    .line 215
    :cond_12
    return-void
.end method

.method private setTest(Ljunit/framework/Test;Ljava/lang/Class;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/Test;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/Test;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    .line 72
    const-class v0, Ljunit/framework/TestSuite;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 73
    invoke-static {p1}, Landroid/test/TestCaseUtil;->getTestName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    goto :goto_1c

    .line 75
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    .line 77
    :goto_1c
    return-void
.end method

.method private shouldRunSingleTestMethod(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 4
    .param p1, "testMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/Test;",
            ">;)Z"
        }
    .end annotation

    .line 135
    .local p2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/Test;>;"
    if-eqz p1, :cond_c

    const-class v0, Ljunit/framework/TestCase;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public addTestListener(Ljunit/framework/TestListener;)V
    .registers 3
    .param p1, "testListener"    # Ljunit/framework/TestListener;

    .line 84
    if-eqz p1, :cond_7

    .line 85
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_7
    return-void
.end method

.method public clearTestListeners()V
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    return-void
.end method

.method protected createTestResult()Ljunit/framework/TestResult;
    .registers 2

    .line 158
    iget-boolean v0, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    if-eqz v0, :cond_a

    .line 159
    new-instance v0, Landroid/test/NoExecTestResult;

    invoke-direct {v0}, Landroid/test/NoExecTestResult;-><init>()V

    return-object v0

    .line 161
    :cond_a
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    return-object v0
.end method

.method public getTestCases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    return-object v0
.end method

.method public getTestClassName()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTestResult()Ljunit/framework/TestResult;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    return-object v0
.end method

.method protected loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "suiteClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected runFailed(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runTest()V
    .registers 2

    .line 181
    invoke-virtual {p0}, Landroid/test/AndroidTestRunner;->createTestResult()Ljunit/framework/TestResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/test/AndroidTestRunner;->runTest(Ljunit/framework/TestResult;)V

    .line 182
    return-void
.end method

.method public runTest(Ljunit/framework/TestResult;)V
    .registers 6
    .param p1, "testResult"    # Ljunit/framework/TestResult;

    .line 185
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    .line 187
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    .line 188
    .local v1, "testListener":Ljunit/framework/TestListener;
    iget-object v2, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v2, v1}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 189
    .end local v1    # "testListener":Ljunit/framework/TestListener;
    goto :goto_8

    .line 191
    :cond_1a
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    goto :goto_25

    :cond_21
    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    .local v0, "testContext":Landroid/content/Context;
    :goto_25
    iget-object v1, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljunit/framework/TestCase;

    .line 193
    .local v2, "testCase":Ljunit/framework/TestCase;
    iget-object v3, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3, v0}, Landroid/test/AndroidTestRunner;->setContextIfAndroidTestCase(Ljunit/framework/Test;Landroid/content/Context;Landroid/content/Context;)V

    .line 194
    iget-object v3, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-direct {p0, v2, v3}, Landroid/test/AndroidTestRunner;->setInstrumentationIfInstrumentationTestCase(Ljunit/framework/Test;Landroid/app/Instrumentation;)V

    .line 195
    iget-object v3, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v2, v3}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V

    .line 196
    .end local v2    # "testCase":Ljunit/framework/TestCase;
    goto :goto_2b

    .line 197
    :cond_47
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    .line 208
    return-void
.end method

.method public setInstrumentaiton(Landroid/app/Instrumentation;)V
    .registers 2
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    invoke-virtual {p0, p1}, Landroid/test/AndroidTestRunner;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 228
    return-void
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .registers 2
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .line 218
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    .line 219
    return-void
.end method

.method setSkipExecution(Z)V
    .registers 2
    .param p1, "skip"    # Z

    .line 165
    iput-boolean p1, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    .line 166
    return-void
.end method

.method public setTest(Ljunit/framework/Test;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/Test;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;Ljava/lang/Class;)V

    .line 68
    return-void
.end method

.method public setTestClassName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "testClassName"    # Ljava/lang/String;
    .param p2, "testMethodName"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Landroid/test/AndroidTestRunner;->loadTestClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "testClass":Ljava/lang/Class;
    invoke-direct {p0, p2, v0}, Landroid/test/AndroidTestRunner;->shouldRunSingleTestMethod(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 57
    invoke-direct {p0, v0, p2}, Landroid/test/AndroidTestRunner;->buildSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    move-result-object v1

    .line 58
    .local v1, "testCase":Ljunit/framework/TestCase;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    .line 59
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    .line 61
    .end local v1    # "testCase":Ljunit/framework/TestCase;
    goto :goto_26

    .line 62
    :cond_1f
    invoke-direct {p0, v0}, Landroid/test/AndroidTestRunner;->getTest(Ljava/lang/Class;)Ljunit/framework/Test;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;Ljava/lang/Class;)V

    .line 64
    :goto_26
    return-void
.end method

.method public testEnded(Ljava/lang/String;)V
    .registers 2
    .param p1, "testName"    # Ljava/lang/String;

    .line 239
    return-void
.end method

.method public testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "test"    # Ljunit/framework/Test;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 242
    return-void
.end method

.method public testStarted(Ljava/lang/String;)V
    .registers 2
    .param p1, "testName"    # Ljava/lang/String;

    .line 236
    return-void
.end method
