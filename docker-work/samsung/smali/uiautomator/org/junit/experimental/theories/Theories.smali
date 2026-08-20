.class public Lorg/junit/experimental/theories/Theories;
.super Lorg/junit/runners/BlockJUnit4ClassRunner;
.source "Theories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/experimental/theories/Theories$TheoryAnchor;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 73
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;-><init>(Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method protected constructor <init>(Lorg/junit/runners/model/TestClass;)V
    .registers 2
    .param p1, "testClass"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;-><init>(Lorg/junit/runners/model/TestClass;)V

    .line 79
    return-void
.end method

.method private validateDataPointFields(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/experimental/theories/Theories;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 91
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_82

    aget-object v3, v0, v2

    .line 92
    .local v3, "field":Ljava/lang/reflect/Field;
    const-class v4, Lorg/junit/experimental/theories/DataPoint;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_23

    const-class v4, Lorg/junit/experimental/theories/DataPoints;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_23

    .line 93
    goto :goto_7f

    .line 95
    :cond_23
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    const-string v5, "DataPoint field "

    if-nez v4, :cond_52

    .line 96
    new-instance v4, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must be static"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_52
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 99
    new-instance v4, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must be public"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_7f
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 102
    :cond_82
    return-void
.end method

.method private validateDataPointMethods(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/experimental/theories/Theories;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 107
    .local v0, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_82

    aget-object v3, v0, v2

    .line 108
    .local v3, "method":Ljava/lang/reflect/Method;
    const-class v4, Lorg/junit/experimental/theories/DataPoint;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_23

    const-class v4, Lorg/junit/experimental/theories/DataPoints;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_23

    .line 109
    goto :goto_7f

    .line 111
    :cond_23
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    const-string v5, "DataPoint method "

    if-nez v4, :cond_52

    .line 112
    new-instance v4, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must be static"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_52
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 115
    new-instance v4, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must be public"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_7f
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 118
    :cond_82
    return-void
.end method

.method private validateParameterSupplier(Ljava/lang/Class;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/experimental/theories/ParameterSupplier;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p1, "supplierClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/experimental/theories/ParameterSupplier;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 147
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v1, v0

    const-string v2, "ParameterSupplier "

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2e

    .line 148
    new-instance v1, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must have only one constructor (either empty or taking only a TestClass)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 151
    :cond_2e
    const/4 v1, 0x0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 152
    .local v3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v3

    if-eqz v4, :cond_65

    aget-object v1, v3, v1

    const-class v4, Lorg/junit/runners/model/TestClass;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 153
    new-instance v1, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " constructor must take either nothing or a single TestClass instance"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v3    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_65
    :goto_65
    return-void
.end method


# virtual methods
.method protected collectInitializationErrors(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-super {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->collectInitializationErrors(Ljava/util/List;)V

    .line 84
    invoke-direct {p0, p1}, Lorg/junit/experimental/theories/Theories;->validateDataPointFields(Ljava/util/List;)V

    .line 85
    invoke-direct {p0, p1}, Lorg/junit/experimental/theories/Theories;->validateDataPointMethods(Ljava/util/List;)V

    .line 86
    return-void
.end method

.method protected computeTestMethods()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-super {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->computeTestMethods()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    .local v0, "testMethods":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-virtual {p0}, Lorg/junit/experimental/theories/Theories;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    const-class v2, Lorg/junit/experimental/theories/Theory;

    invoke-virtual {v1, v2}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 163
    .local v1, "theoryMethods":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    return-object v0
.end method

.method public methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;
    .registers 4
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;

    .line 170
    new-instance v0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    invoke-virtual {p0}, Lorg/junit/experimental/theories/Theories;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;-><init>(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/TestClass;)V

    return-object v0
.end method

.method protected validateConstructor(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1}, Lorg/junit/experimental/theories/Theories;->validateOnlyOneConstructor(Ljava/util/List;)V

    .line 123
    return-void
.end method

.method protected validateTestMethods(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/experimental/theories/Theories;->computeTestMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    .line 128
    .local v1, "each":Lorg/junit/runners/model/FrameworkMethod;
    const-class v2, Lorg/junit/experimental/theories/Theory;

    invoke-virtual {v1, v2}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 129
    invoke-virtual {v1, v3, p1}, Lorg/junit/runners/model/FrameworkMethod;->validatePublicVoid(ZLjava/util/List;)V

    .line 130
    invoke-virtual {v1, p1}, Lorg/junit/runners/model/FrameworkMethod;->validateNoTypeParametersOnArgs(Ljava/util/List;)V

    goto :goto_27

    .line 132
    :cond_24
    invoke-virtual {v1, v3, p1}, Lorg/junit/runners/model/FrameworkMethod;->validatePublicVoidNoArg(ZLjava/util/List;)V

    .line 135
    :goto_27
    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v2}, Lorg/junit/experimental/theories/ParameterSignature;->signatures(Ljava/lang/reflect/Method;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/experimental/theories/ParameterSignature;

    .line 136
    .local v3, "signature":Lorg/junit/experimental/theories/ParameterSignature;
    const-class v4, Lorg/junit/experimental/theories/ParametersSuppliedBy;

    invoke-virtual {v3, v4}, Lorg/junit/experimental/theories/ParameterSignature;->findDeepAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/junit/experimental/theories/ParametersSuppliedBy;

    .line 137
    .local v4, "annotation":Lorg/junit/experimental/theories/ParametersSuppliedBy;
    if-eqz v4, :cond_50

    .line 138
    invoke-interface {v4}, Lorg/junit/experimental/theories/ParametersSuppliedBy;->value()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lorg/junit/experimental/theories/Theories;->validateParameterSupplier(Ljava/lang/Class;Ljava/util/List;)V

    .line 140
    .end local v3    # "signature":Lorg/junit/experimental/theories/ParameterSignature;
    .end local v4    # "annotation":Lorg/junit/experimental/theories/ParametersSuppliedBy;
    :cond_50
    goto :goto_33

    .line 141
    .end local v1    # "each":Lorg/junit/runners/model/FrameworkMethod;
    :cond_51
    goto :goto_8

    .line 142
    :cond_52
    return-void
.end method
