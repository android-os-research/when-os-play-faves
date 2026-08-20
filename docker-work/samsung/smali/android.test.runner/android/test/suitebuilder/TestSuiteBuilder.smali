.class public Landroid/test/suitebuilder/TestSuiteBuilder;
.super Ljava/lang/Object;
.source "TestSuiteBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private currentClassname:Ljava/lang/String;

.field private final predicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private rootSuite:Ljunit/framework/TestSuite;

.field private suiteForCurrentClass:Ljunit/framework/TestSuite;

.field private suiteName:Ljava/lang/String;

.field private testCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private final testGrouping:Landroid/test/suitebuilder/TestGrouping;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->predicates:Ljava/util/Set;

    .line 68
    iput-object p1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteName:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/test/suitebuilder/TestGrouping;

    sget-object v1, Landroid/test/suitebuilder/TestGrouping;->SORT_BY_FULLY_QUALIFIED_NAME:Ljava/util/Comparator;

    invoke-direct {v0, v1, p2}, Landroid/test/suitebuilder/TestGrouping;-><init>(Ljava/util/Comparator;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/util/Predicate;

    sget-object v1, Landroid/test/suitebuilder/TestPredicates;->REJECT_SUPPRESSED:Lcom/android/internal/util/Predicate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 72
    return-void
.end method

.method private addSuiteIfNecessary(Ljava/lang/String;)V
    .registers 4
    .param p1, "parentClassname"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->currentClassname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 269
    iput-object p1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->currentClassname:Ljava/lang/String;

    .line 270
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteForCurrentClass:Ljunit/framework/TestSuite;

    .line 271
    iget-object v1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->rootSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v1, v0}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 273
    :cond_16
    return-void
.end method

.method private addTest(Landroid/test/suitebuilder/TestMethod;)V
    .registers 4
    .param p1, "testMethod"    # Landroid/test/suitebuilder/TestMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClassname()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addSuiteIfNecessary(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteForCurrentClass:Ljunit/framework/TestSuite;

    invoke-virtual {p1}, Landroid/test/suitebuilder/TestMethod;->createTest()Ljunit/framework/TestCase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 260
    return-void
.end method

.method private addTest(Ljunit/framework/Test;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/Test;

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addSuiteIfNecessary(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteForCurrentClass:Ljunit/framework/TestSuite;

    invoke-virtual {v0, p1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 265
    return-void
.end method

.method private static parsePackageNameFromClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;

    .line 276
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private satisfiesAllPredicates(Landroid/test/suitebuilder/TestMethod;)Z
    .registers 5
    .param p1, "test"    # Landroid/test/suitebuilder/TestMethod;

    .line 249
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->predicates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/Predicate;

    .line 250
    .local v1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    invoke-interface {v1, p1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 251
    const/4 v0, 0x0

    return v0

    .line 253
    .end local v1    # "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    :cond_1a
    goto :goto_6

    .line 254
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;)",
            "Landroid/test/suitebuilder/TestSuiteBuilder;"
        }
    .end annotation

    .line 125
    .local p1, "predicates":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;>;"
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->predicates:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 126
    return-object p0
.end method

.method public final varargs addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;)",
            "Landroid/test/suitebuilder/TestSuiteBuilder;"
        }
    .end annotation

    .line 222
    .local p1, "predicates":[Lcom/android/internal/util/Predicate;, "[Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addTestClassByName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .registers 7
    .param p1, "testClassName"    # Ljava/lang/String;
    .param p2, "testMethodName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/test/AndroidTestRunner;

    invoke-direct {v0}, Landroid/test/AndroidTestRunner;-><init>()V

    .line 79
    .local v0, "atr":Landroid/test/AndroidTestRunner;
    invoke-virtual {v0, p3}, Landroid/test/AndroidTestRunner;->setContext(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v0, p1, p2}, Landroid/test/AndroidTestRunner;->setTestClassName(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    invoke-virtual {v0}, Landroid/test/AndroidTestRunner;->getTestCases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    return-object p0
.end method

.method public addTestSuite(Ljunit/framework/TestSuite;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .registers 5
    .param p1, "testSuite"    # Ljunit/framework/TestSuite;

    .line 88
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    .line 89
    .local v1, "testCase":Ljunit/framework/TestCase;
    iget-object v2, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v1    # "testCase":Ljunit/framework/TestCase;
    goto :goto_9

    .line 91
    :cond_1b
    return-object p0
.end method

.method public final build()Ljunit/framework/TestSuite;
    .registers 4

    .line 178
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-virtual {p0}, Landroid/test/suitebuilder/TestSuiteBuilder;->getSuiteName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->rootSuite:Ljunit/framework/TestSuite;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->currentClassname:Ljava/lang/String;

    .line 183
    :try_start_e
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    invoke-virtual {v0}, Landroid/test/suitebuilder/TestGrouping;->getTests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/test/suitebuilder/TestMethod;

    .line 184
    .local v1, "test":Landroid/test/suitebuilder/TestMethod;
    invoke-direct {p0, v1}, Landroid/test/suitebuilder/TestSuiteBuilder;->satisfiesAllPredicates(Landroid/test/suitebuilder/TestMethod;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 185
    invoke-direct {p0, v1}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTest(Landroid/test/suitebuilder/TestMethod;)V

    .line 187
    .end local v1    # "test":Landroid/test/suitebuilder/TestMethod;
    :cond_2d
    goto :goto_18

    .line 188
    :cond_2e
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_57

    .line 189
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    .line 190
    .local v1, "testCase":Ljunit/framework/TestCase;
    new-instance v2, Landroid/test/suitebuilder/TestMethod;

    invoke-direct {v2, v1}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljunit/framework/TestCase;)V

    invoke-direct {p0, v2}, Landroid/test/suitebuilder/TestSuiteBuilder;->satisfiesAllPredicates(Landroid/test/suitebuilder/TestMethod;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 191
    invoke-direct {p0, v1}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTest(Ljunit/framework/Test;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_56} :catch_5b

    .line 193
    .end local v1    # "testCase":Ljunit/framework/TestCase;
    :cond_56
    goto :goto_3c

    .line 200
    :cond_57
    nop

    .line 201
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->rootSuite:Ljunit/framework/TestSuite;

    return-object v0

    .line 195
    :catch_5b
    move-exception v0

    .line 196
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "TestSuiteBuilder"

    const-string v2, "Failed to create test."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    new-instance v1, Ljunit/framework/TestSuite;

    invoke-virtual {p0}, Landroid/test/suitebuilder/TestSuiteBuilder;->getSuiteName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "suite":Ljunit/framework/TestSuite;
    new-instance v2, Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;

    invoke-direct {v2, v0}, Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 199
    return-object v1
.end method

.method public varargs excludePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .registers 3
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 113
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    invoke-virtual {v0, p1}, Landroid/test/suitebuilder/TestGrouping;->removePackagesRecursive([Ljava/lang/String;)V

    .line 114
    return-object p0
.end method

.method protected getSuiteName()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteName:Ljava/lang/String;

    return-object v0
.end method

.method public final includeAllPackagesUnderHere()Landroid/test/suitebuilder/TestSuiteBuilder;
    .registers 8

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 138
    .local v0, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 139
    .local v1, "callingClassName":Ljava/lang/String;
    const-class v2, Landroid/test/suitebuilder/TestSuiteBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "thisClassName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v0

    if-ge v3, v4, :cond_37

    .line 144
    aget-object v4, v0, v3

    .line 145
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 146
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "includeAllPackagesUnderHere"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 149
    add-int/lit8 v5, v3, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 150
    goto :goto_37

    .line 143
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 154
    .end local v3    # "i":I
    :cond_37
    :goto_37
    invoke-static {v1}, Landroid/test/suitebuilder/TestSuiteBuilder;->parsePackageNameFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    move-result-object v4

    return-object v4
.end method

.method public varargs includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .registers 3
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 102
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    invoke-virtual {v0, p1}, Landroid/test/suitebuilder/TestGrouping;->addPackagesRecursive([Ljava/lang/String;)V

    .line 103
    return-object p0
.end method

.method public named(Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .registers 2
    .param p1, "newSuiteName"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteName:Ljava/lang/String;

    .line 169
    return-object p0
.end method
