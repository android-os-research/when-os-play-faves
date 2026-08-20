.class public Lcom/android/uiautomator/testrunner/TestCaseCollector;
.super Ljava/lang/Object;
.source "TestCaseCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;
    }
.end annotation


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

.field private mTestCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;)V
    .registers 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "filter"    # Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mClassLoader:Ljava/lang/ClassLoader;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

    .line 41
    return-void
.end method

.method private error(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
    .registers 5
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;"
        }
    .end annotation

    .line 123
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;

    invoke-direct {v0, p0, p2}, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;-><init>(Lcom/android/uiautomator/testrunner/TestCaseCollector;Ljava/lang/String;)V

    .line 129
    .local v0, "warning":Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setName(Ljava/lang/String;)V

    .line 130
    return-object v0
.end method


# virtual methods
.method protected addSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 7
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 106
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

    invoke-interface {v0, p1}, Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;->accept(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 110
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/TestCase;

    .line 111
    .local v0, "testCase":Ljunit/framework/TestCase;
    invoke-virtual {v0, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_16} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_16} :catch_18

    .line 119
    nop

    .end local v0    # "testCase":Ljunit/framework/TestCase;
    goto :goto_5c

    .line 116
    :catch_18
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalAccessException;
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException: could not instantiate test class. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-direct {p0, p1, v2}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->error(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 113
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3a
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/InstantiationException;
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantiationException: could not instantiate test class. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-direct {p0, p1, v2}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->error(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v0    # "e":Ljava/lang/InstantiationException;
    nop

    .line 120
    :goto_5c
    return-void

    .line 107
    :cond_5d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Test class must be derived from UiAutomatorTestCase"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTestClass(Ljava/lang/String;)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 66
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 67
    .local v0, "hashPos":I
    const/4 v1, 0x0

    .line 68
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_15

    .line 69
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 72
    :cond_15
    invoke-virtual {p0, p1, v1}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addTestClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public addTestClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_c

    .line 86
    invoke-virtual {p0, v0, p2}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_28

    .line 88
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 89
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 90
    .local v4, "method":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

    invoke-interface {v5, v4}, Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;->accept(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 91
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)V

    .line 89
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 95
    .end local v1    # "methods":[Ljava/lang/reflect/Method;
    :cond_28
    :goto_28
    return-void
.end method

.method public addTestClasses(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 52
    .local p1, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addTestClass(Ljava/lang/String;)V

    .line 54
    .end local v1    # "className":Ljava/lang/String;
    goto :goto_4

    .line 55
    :cond_14
    return-void
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

    .line 102
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
