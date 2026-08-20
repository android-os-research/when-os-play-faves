.class public Landroid/test/TestCaseUtil;
.super Ljava/lang/Object;
.source "TestCaseUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static getTestName(Ljunit/framework/Test;)Ljava/lang/String;
    .registers 5
    .param p0, "test"    # Ljunit/framework/Test;

    .line 114
    instance-of v0, p0, Ljunit/framework/TestCase;

    if-eqz v0, :cond_c

    .line 115
    move-object v0, p0

    check-cast v0, Ljunit/framework/TestCase;

    .line 116
    .local v0, "testCase":Ljunit/framework/TestCase;
    invoke-virtual {v0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 117
    .end local v0    # "testCase":Ljunit/framework/TestCase;
    :cond_c
    instance-of v0, p0, Ljunit/framework/TestSuite;

    if-eqz v0, :cond_2a

    .line 118
    move-object v0, p0

    check-cast v0, Ljunit/framework/TestSuite;

    .line 119
    .local v0, "testSuite":Ljunit/framework/TestSuite;
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 121
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 122
    .local v2, "index":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_29

    .line 123
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 125
    :cond_29
    return-object v1

    .line 129
    .end local v0    # "testSuite":Ljunit/framework/TestSuite;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_2a
    const-string v0, ""

    return-object v0
.end method

.method public static getTests(Ljunit/framework/Test;Z)Ljava/util/List;
    .registers 3
    .param p0, "test"    # Ljunit/framework/Test;
    .param p1, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z)",
            "Ljava/util/List<",
            "+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;
    .registers 9
    .param p0, "test"    # Ljunit/framework/Test;
    .param p1, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/List<",
            "+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .line 49
    .local p2, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/Test;>;"
    if-eqz p0, :cond_49

    .line 52
    const/4 v1, 0x0

    .line 58
    .local v1, "workingTest":Ljunit/framework/Test;
    instance-of v2, p0, Ljunit/framework/TestCase;

    if-eqz v2, :cond_1d

    move-object v2, p0

    check-cast v2, Ljunit/framework/TestCase;

    .line 59
    invoke-virtual {v2}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/test/TestCaseUtil;->invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;

    move-result-object v1

    .line 63
    :cond_1d
    if-nez v1, :cond_20

    .line 64
    move-object v1, p0

    .line 67
    :cond_20
    instance-of v2, v1, Ljunit/framework/TestSuite;

    if-eqz v2, :cond_46

    .line 68
    move-object v2, v1

    check-cast v2, Ljunit/framework/TestSuite;

    .line 69
    .local v2, "testSuite":Ljunit/framework/TestSuite;
    invoke-virtual {v2}, Ljunit/framework/TestSuite;->tests()Ljava/util/Enumeration;

    move-result-object v3

    .line 70
    .local v3, "enumeration":Ljava/util/Enumeration;
    :goto_2b
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 71
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljunit/framework/Test;

    .line 72
    .local v4, "childTest":Ljunit/framework/Test;
    if-eqz p1, :cond_41

    .line 73
    invoke-static {v4, p1, p2}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_44

    .line 75
    :cond_41
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v4    # "childTest":Ljunit/framework/Test;
    :goto_44
    goto :goto_2b

    .line 78
    .end local v2    # "testSuite":Ljunit/framework/TestSuite;
    .end local v3    # "enumeration":Ljava/util/Enumeration;
    :cond_45
    goto :goto_49

    .line 79
    :cond_46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v1    # "workingTest":Ljunit/framework/Test;
    :cond_49
    :goto_49
    return-object v0
.end method

.method static invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;
    .registers 5
    .param p0, "testClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljunit/framework/Test;"
        }
    .end annotation

    .line 88
    .local p1, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "suite"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 96
    .local v1, "suiteMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 97
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 98
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1d} :catch_2b

    .line 100
    :try_start_1d
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljunit/framework/Test;
    :try_end_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_26} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_26} :catch_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_26} :catch_2b

    return-object v2

    .line 103
    :catch_27
    move-exception v2

    goto :goto_2a

    .line 101
    :catch_29
    move-exception v2

    .line 109
    .end local v1    # "suiteMethod":Ljava/lang/reflect/Method;
    :cond_2a
    :goto_2a
    goto :goto_2c

    .line 107
    :catch_2b
    move-exception v1

    .line 110
    :goto_2c
    return-object v0
.end method
