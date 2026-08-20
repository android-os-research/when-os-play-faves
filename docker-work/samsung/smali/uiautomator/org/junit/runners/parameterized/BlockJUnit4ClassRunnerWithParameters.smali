.class public Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;
.super Lorg/junit/runners/BlockJUnit4ClassRunner;
.source "BlockJUnit4ClassRunnerWithParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunAfterParams;,
        Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;,
        Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetparameters(Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    return-object p0
.end method

.method public constructor <init>(Lorg/junit/runners/parameterized/TestWithParameters;)V
    .registers 4
    .param p1, "test"    # Lorg/junit/runners/parameterized/TestWithParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lorg/junit/runners/parameterized/TestWithParameters;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/runners/BlockJUnit4ClassRunner;-><init>(Lorg/junit/runners/model/TestClass;)V

    .line 36
    invoke-virtual {p1}, Lorg/junit/runners/parameterized/TestWithParameters;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lorg/junit/runners/parameterized/TestWithParameters;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Lorg/junit/runners/parameterized/TestWithParameters;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private createTestUsingConstructorInjection()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private createTestUsingFieldInjection()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getAnnotatedFieldsByParameter()Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "annotatedFieldsByParameter":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkField;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_de

    .line 69
    invoke-virtual {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v1}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, "testClassInstance":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runners/model/FrameworkField;

    .line 71
    .local v3, "each":Lorg/junit/runners/model/FrameworkField;
    invoke-virtual {v3}, Lorg/junit/runners/model/FrameworkField;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    .line 72
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v5, Lorg/junit/runners/Parameterized$Parameter;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/junit/runners/Parameterized$Parameter;

    .line 73
    .local v5, "annotation":Lorg/junit/runners/Parameterized$Parameter;
    invoke-interface {v5}, Lorg/junit/runners/Parameterized$Parameter;->value()I

    move-result v6

    .line 75
    .local v6, "index":I
    :try_start_39
    iget-object v7, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    aget-object v7, v7, v6

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_40} :catch_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_40} :catch_42

    .line 91
    nop

    .line 92
    .end local v3    # "each":Lorg/junit/runners/model/FrameworkField;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "annotation":Lorg/junit/runners/Parameterized$Parameter;
    .end local v6    # "index":I
    goto :goto_1d

    .line 83
    .restart local v3    # "each":Lorg/junit/runners/model/FrameworkField;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "annotation":Lorg/junit/runners/Parameterized$Parameter;
    .restart local v6    # "index":I
    :catch_42
    move-exception v2

    .line 84
    .local v2, "iare":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v9

    invoke-virtual {v9}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Trying to set "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 85
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with the value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " that is not the right type ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    aget-object v9, v9, v6

    .line 88
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " instead of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 89
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 76
    .end local v2    # "iare":Ljava/lang/IllegalArgumentException;
    :catch_a8
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalAccessException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot set parameter \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 78
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'. Ensure that the field \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 79
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is public."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 81
    .local v7, "wrappedException":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7, v2}, Ljava/lang/IllegalAccessException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 82
    throw v7

    .line 93
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "each":Lorg/junit/runners/model/FrameworkField;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "annotation":Lorg/junit/runners/Parameterized$Parameter;
    .end local v6    # "index":I
    .end local v7    # "wrappedException":Ljava/lang/IllegalAccessException;
    :cond_dd
    return-object v1

    .line 62
    .end local v1    # "testClassInstance":Ljava/lang/Object;
    :cond_de
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong number of parameters and @Parameter fields. @Parameter fields counted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", available parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fieldsAreAnnotated()Z
    .registers 2

    .line 217
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getAnnotatedFieldsByParameter()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getAnnotatedFieldsByParameter()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkField;",
            ">;"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    const-class v1, Lorg/junit/runners/Parameterized$Parameter;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getInjectionType()Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;
    .registers 2

    .line 209
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->fieldsAreAnnotated()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 210
    sget-object v0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;->FIELD:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    return-object v0

    .line 212
    :cond_9
    sget-object v0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;->CONSTRUCTOR:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    return-object v0
.end method

.method private withAfterParams(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 4
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .line 173
    invoke-virtual {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    const-class v1, Lorg/junit/runners/Parameterized$AfterParam;

    .line 174
    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "afters":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v1, p1

    goto :goto_17

    :cond_12
    new-instance v1, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunAfterParams;

    invoke-direct {v1, p0, p1, v0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunAfterParams;-><init>(Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;Lorg/junit/runners/model/Statement;Ljava/util/List;)V

    :goto_17
    return-object v1
.end method

.method private withBeforeParams(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 4
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .line 155
    invoke-virtual {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    const-class v1, Lorg/junit/runners/Parameterized$BeforeParam;

    .line 156
    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "befores":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v1, p1

    goto :goto_17

    :cond_12
    new-instance v1, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;

    invoke-direct {v1, p0, p1, v0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;-><init>(Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;Lorg/junit/runners/model/Statement;Ljava/util/List;)V

    :goto_17
    return-object v1
.end method


# virtual methods
.method protected classBlock(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;
    .registers 3
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 148
    invoke-virtual {p0, p1}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->childrenInvoker(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 149
    .local v0, "statement":Lorg/junit/runners/model/Statement;
    invoke-direct {p0, v0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->withBeforeParams(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 150
    invoke-direct {p0, v0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->withAfterParams(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method public createTest()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getInjectionType()Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    move-result-object v0

    .line 44
    .local v0, "injectionType":Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;
    sget-object v1, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$1;->$SwitchMap$org$junit$runners$parameterized$BlockJUnit4ClassRunnerWithParameters$InjectionType:[I

    invoke-virtual {v0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    .line 50
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The injection type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :pswitch_2e
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->createTestUsingFieldInjection()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 46
    :pswitch_33
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->createTestUsingConstructorInjection()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2e
    .end packed-switch
.end method

.method protected getName()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getRunnerAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 9

    .line 192
    invoke-super {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getRunnerAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 193
    .local v0, "allAnnotations":[Ljava/lang/annotation/Annotation;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    .line 194
    .local v1, "annotationsWithoutRunWith":[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .line 195
    .local v2, "i":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_23

    aget-object v5, v0, v4

    .line 196
    .local v5, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lorg/junit/runner/RunWith;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 197
    aput-object v5, v1, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    .line 195
    .end local v5    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 201
    :cond_23
    return-object v1
.end method

.method protected testName(Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/String;
    .registers 4
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateConstructor(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->validateOnlyOneConstructor(Ljava/util/List;)V

    .line 109
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getInjectionType()Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    move-result-object v0

    sget-object v1, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;->CONSTRUCTOR:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    if-eq v0, v1, :cond_e

    .line 110
    invoke-virtual {p0, p1}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->validateZeroArgConstructor(Ljava/util/List;)V

    .line 112
    :cond_e
    return-void
.end method

.method protected validateFields(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-super {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateFields(Ljava/util/List;)V

    .line 117
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getInjectionType()Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    move-result-object v0

    sget-object v1, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;->FIELD:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    if-ne v0, v1, :cond_dd

    .line 118
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getAnnotatedFieldsByParameter()Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "annotatedFieldsByParameter":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkField;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 120
    .local v1, "usedIndices":[I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runners/model/FrameworkField;

    .line 121
    .local v3, "each":Lorg/junit/runners/model/FrameworkField;
    invoke-virtual {v3}, Lorg/junit/runners/model/FrameworkField;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    const-class v6, Lorg/junit/runners/Parameterized$Parameter;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/junit/runners/Parameterized$Parameter;

    .line 122
    invoke-interface {v5}, Lorg/junit/runners/Parameterized$Parameter;->value()I

    move-result v5

    .line 123
    .local v5, "index":I
    if-ltz v5, :cond_46

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-le v5, v6, :cond_40

    goto :goto_46

    .line 130
    :cond_40
    aget v6, v1, v5

    add-int/2addr v6, v4

    aput v6, v1, v5

    goto :goto_84

    .line 124
    :cond_46
    :goto_46
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid @Parameter value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". @Parameter fields counted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Please use an index between 0 and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v3    # "each":Lorg/junit/runners/model/FrameworkField;
    .end local v5    # "index":I
    :goto_84
    goto :goto_19

    .line 133
    :cond_85
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_86
    array-length v3, v1

    if-ge v2, v3, :cond_dd

    .line 134
    aget v3, v1, v2

    .line 135
    .local v3, "numberOfUse":I
    const-string v5, "@Parameter("

    if-nez v3, :cond_af

    .line 136
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") is never used."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_da

    .line 138
    :cond_af
    if-le v3, v4, :cond_da

    .line 139
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") is used more than once ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v3    # "numberOfUse":I
    :cond_da
    :goto_da
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 144
    .end local v0    # "annotatedFieldsByParameter":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkField;>;"
    .end local v1    # "usedIndices":[I
    .end local v2    # "index":I
    :cond_dd
    return-void
.end method
