.class public Landroid/test/suitebuilder/TestMethod;
.super Ljava/lang/Object;
.source "TestMethod.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final enclosingClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private final enclosingClassname:Ljava/lang/String;

.field private final testMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    .line 46
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljunit/framework/TestCase;)V
    .registers 4
    .param p1, "testCase"    # Ljunit/framework/TestCase;

    .line 51
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    return-void
.end method

.method private instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;
    .registers 10
    .param p1, "testCaseClass"    # Ljava/lang/Class;
    .param p2, "testName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 85
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    array-length v1, v0

    if-nez v1, :cond_10

    .line 86
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/test/suitebuilder/TestMethod;->instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    move-result-object v1

    return-object v1

    .line 88
    :cond_10
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_42

    aget-object v4, v0, v3

    .line 89
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 90
    .local v5, "params":[Ljava/lang/Class;
    invoke-direct {p0, v5}, Landroid/test/suitebuilder/TestMethod;->noargsConstructor([Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 91
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    .line 94
    .local v1, "test":Ljunit/framework/TestCase;
    invoke-virtual {v1, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    .line 95
    return-object v1

    .line 96
    .end local v1    # "test":Ljunit/framework/TestCase;
    :cond_2d
    invoke-direct {p0, v5}, Landroid/test/suitebuilder/TestMethod;->singleStringConstructor([Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 97
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 98
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    .line 97
    return-object v1

    .line 88
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "params":[Ljava/lang/Class;
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 102
    :cond_42
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to locate a constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private noargsConstructor([Ljava/lang/Class;)Z
    .registers 3
    .param p1, "params"    # [Ljava/lang/Class;

    .line 111
    array-length v0, p1

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private singleStringConstructor([Ljava/lang/Class;)Z
    .registers 6
    .param p1, "params"    # [Ljava/lang/Class;

    .line 107
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    aget-object v0, p1, v1

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method


# virtual methods
.method public createTest()Ljunit/framework/TestCase;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestMethod;->instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 116
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 117
    return v0

    .line 119
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    .line 123
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/test/suitebuilder/TestMethod;

    .line 125
    .local v2, "that":Landroid/test/suitebuilder/TestMethod;
    iget-object v3, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v4, v2, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_26

    :cond_22
    iget-object v3, v2, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    if-eqz v3, :cond_27

    .line 128
    :goto_26
    return v1

    .line 130
    :cond_27
    iget-object v3, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    if-eqz v3, :cond_34

    iget-object v4, v2, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_38

    :cond_34
    iget-object v3, v2, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    if-eqz v3, :cond_39

    .line 133
    :goto_38
    return v1

    .line 135
    :cond_39
    return v0

    .line 120
    .end local v2    # "that":Landroid/test/suitebuilder/TestMethod;
    :cond_3a
    :goto_3a
    return v1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 64
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Landroid/test/suitebuilder/TestMethod;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    .line 65
    :catch_14
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEnclosingClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getEnclosingClassname()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 141
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 142
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v2, v1

    .line 143
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
