.class public Lorg/junit/internal/runners/JUnit38ClassRunner;
.super Lorg/junit/runner/Runner;
.source "JUnit38ClassRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Orderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/runners/JUnit38ClassRunner$OldTestClassAdaptingListener;
    }
.end annotation


# instance fields
.field private volatile test:Ljunit/framework/Test;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 78
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljunit/framework/TestSuite;

    const-class v1, Ljunit/framework/TestCase;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/junit/internal/runners/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljunit/framework/Test;)V
    .registers 2
    .param p1, "test"    # Ljunit/framework/Test;

    .line 82
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 83
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/JUnit38ClassRunner;->setTest(Ljunit/framework/Test;)V

    .line 84
    return-void
.end method

.method private static createSuiteDescription(Ljunit/framework/TestSuite;)Ljava/lang/String;
    .registers 7
    .param p0, "ts"    # Ljunit/framework/TestSuite;

    .line 144
    invoke-virtual {p0}, Ljunit/framework/TestSuite;->countTestCases()I

    move-result v0

    .line 145
    .local v0, "count":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    const-string v3, ""

    goto :goto_19

    :cond_b
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, " [example: %s]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "example":Ljava/lang/String;
    :goto_19
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v3, v4, v1

    const-string v1, "TestSuite with %s tests%s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAnnotations(Ljunit/framework/TestCase;)[Ljava/lang/annotation/Annotation;
    .registers 5
    .param p0, "test"    # Ljunit/framework/TestCase;

    .line 135
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 136
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_13} :catch_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_13} :catch_14

    return-object v0

    .line 138
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_14
    move-exception v1

    goto :goto_18

    .line 137
    :catch_16
    move-exception v1

    .line 139
    nop

    .line 140
    :goto_18
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method private getTest()Ljunit/framework/Test;
    .registers 2

    .line 194
    iget-object v0, p0, Lorg/junit/internal/runners/JUnit38ClassRunner;->test:Ljunit/framework/Test;

    return-object v0
.end method

.method private static makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;
    .registers 7
    .param p0, "test"    # Ljunit/framework/Test;

    .line 103
    instance-of v0, p0, Ljunit/framework/TestCase;

    if-eqz v0, :cond_18

    .line 104
    move-object v0, p0

    check-cast v0, Ljunit/framework/TestCase;

    .line 105
    .local v0, "tc":Ljunit/framework/TestCase;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getAnnotations(Ljunit/framework/TestCase;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 105
    invoke-static {v1, v2, v3}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v1

    return-object v1

    .line 107
    .end local v0    # "tc":Ljunit/framework/TestCase;
    :cond_18
    instance-of v0, p0, Ljunit/framework/TestSuite;

    if-eqz v0, :cond_4b

    .line 108
    move-object v0, p0

    check-cast v0, Ljunit/framework/TestSuite;

    .line 109
    .local v0, "ts":Ljunit/framework/TestSuite;
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2a

    invoke-static {v0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->createSuiteDescription(Ljunit/framework/TestSuite;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "name":Ljava/lang/String;
    :goto_2e
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-static {v1, v2}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v2

    .line 111
    .local v2, "description":Lorg/junit/runner/Description;
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->testCount()I

    move-result v3

    .line 112
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    if-ge v4, v3, :cond_4a

    .line 113
    invoke-virtual {v0, v4}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v5

    invoke-static {v5}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v5

    .line 114
    .local v5, "made":Lorg/junit/runner/Description;
    invoke-virtual {v2, v5}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    .line 112
    .end local v5    # "made":Lorg/junit/runner/Description;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 116
    .end local v4    # "i":I
    :cond_4a
    return-object v2

    .line 117
    .end local v0    # "ts":Ljunit/framework/TestSuite;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "description":Lorg/junit/runner/Description;
    .end local v3    # "n":I
    :cond_4b
    instance-of v0, p0, Lorg/junit/runner/Describable;

    if-eqz v0, :cond_57

    .line 118
    move-object v0, p0

    check-cast v0, Lorg/junit/runner/Describable;

    .line 119
    .local v0, "adapter":Lorg/junit/runner/Describable;
    invoke-interface {v0}, Lorg/junit/runner/Describable;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    return-object v1

    .line 120
    .end local v0    # "adapter":Lorg/junit/runner/Describable;
    :cond_57
    instance-of v0, p0, Ljunit/extensions/TestDecorator;

    if-eqz v0, :cond_67

    .line 121
    move-object v0, p0

    check-cast v0, Ljunit/extensions/TestDecorator;

    .line 122
    .local v0, "decorator":Ljunit/extensions/TestDecorator;
    invoke-virtual {v0}, Ljunit/extensions/TestDecorator;->getTest()Ljunit/framework/Test;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v1

    return-object v1

    .line 125
    .end local v0    # "decorator":Ljunit/extensions/TestDecorator;
    :cond_67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method private setTest(Ljunit/framework/Test;)V
    .registers 2
    .param p1, "test"    # Ljunit/framework/Test;

    .line 190
    iput-object p1, p0, Lorg/junit/internal/runners/JUnit38ClassRunner;->test:Ljunit/framework/Test;

    .line 191
    return-void
.end method


# virtual methods
.method public createAdaptingListener(Lorg/junit/runner/notification/RunNotifier;)Ljunit/framework/TestListener;
    .registers 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 94
    new-instance v0, Lorg/junit/internal/runners/JUnit38ClassRunner$OldTestClassAdaptingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/junit/internal/runners/JUnit38ClassRunner$OldTestClassAdaptingListener;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/internal/runners/JUnit38ClassRunner$OldTestClassAdaptingListener-IA;)V

    return-object v0
.end method

.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .registers 8
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    instance-of v0, v0, Lorg/junit/runner/manipulation/Filterable;

    if-eqz v0, :cond_12

    .line 151
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/manipulation/Filterable;

    .line 152
    .local v0, "adapter":Lorg/junit/runner/manipulation/Filterable;
    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Filterable;->filter(Lorg/junit/runner/manipulation/Filter;)V

    .end local v0    # "adapter":Lorg/junit/runner/manipulation/Filterable;
    goto :goto_54

    .line 153
    :cond_12
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    instance-of v0, v0, Ljunit/framework/TestSuite;

    if-eqz v0, :cond_54

    .line 154
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Ljunit/framework/TestSuite;

    .line 155
    .local v0, "suite":Ljunit/framework/TestSuite;
    new-instance v1, Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "filtered":Ljunit/framework/TestSuite;
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->testCount()I

    move-result v2

    .line 157
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v2, :cond_44

    .line 158
    invoke-virtual {v0, v3}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v4

    .line 159
    .local v4, "test":Ljunit/framework/Test;
    invoke-static {v4}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 160
    invoke-virtual {v1, v4}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 157
    .end local v4    # "test":Ljunit/framework/Test;
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 163
    .end local v3    # "i":I
    :cond_44
    invoke-direct {p0, v1}, Lorg/junit/internal/runners/JUnit38ClassRunner;->setTest(Ljunit/framework/Test;)V

    .line 164
    invoke-virtual {v1}, Ljunit/framework/TestSuite;->testCount()I

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_55

    .line 165
    :cond_4e
    new-instance v3, Lorg/junit/runner/manipulation/NoTestsRemainException;

    invoke-direct {v3}, Lorg/junit/runner/manipulation/NoTestsRemainException;-><init>()V

    throw v3

    .line 153
    .end local v0    # "suite":Ljunit/framework/TestSuite;
    .end local v1    # "filtered":Ljunit/framework/TestSuite;
    .end local v2    # "n":I
    :cond_54
    :goto_54
    nop

    .line 168
    :goto_55
    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .registers 2

    .line 99
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public order(Lorg/junit/runner/manipulation/Orderer;)V
    .registers 3
    .param p1, "orderer"    # Lorg/junit/runner/manipulation/Orderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/InvalidOrderingException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    instance-of v0, v0, Lorg/junit/runner/manipulation/Orderable;

    if-eqz v0, :cond_11

    .line 184
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/manipulation/Orderable;

    .line 185
    .local v0, "adapter":Lorg/junit/runner/manipulation/Orderable;
    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Orderable;->order(Lorg/junit/runner/manipulation/Orderer;)V

    .line 187
    .end local v0    # "adapter":Lorg/junit/runner/manipulation/Orderable;
    :cond_11
    return-void
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 88
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    .line 89
    .local v0, "result":Ljunit/framework/TestResult;
    invoke-virtual {p0, p1}, Lorg/junit/internal/runners/JUnit38ClassRunner;->createAdaptingListener(Lorg/junit/runner/notification/RunNotifier;)Ljunit/framework/TestListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 90
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v1

    invoke-interface {v1, v0}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 91
    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .registers 3
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;

    .line 171
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    instance-of v0, v0, Lorg/junit/runner/manipulation/Sortable;

    if-eqz v0, :cond_11

    .line 172
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/manipulation/Sortable;

    .line 173
    .local v0, "adapter":Lorg/junit/runner/manipulation/Sortable;
    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Sortable;->sort(Lorg/junit/runner/manipulation/Sorter;)V

    .line 175
    .end local v0    # "adapter":Lorg/junit/runner/manipulation/Sortable;
    :cond_11
    return-void
.end method
