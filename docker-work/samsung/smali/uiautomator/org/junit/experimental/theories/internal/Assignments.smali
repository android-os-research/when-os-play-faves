.class public Lorg/junit/experimental/theories/internal/Assignments;
.super Ljava/lang/Object;
.source "Assignments.java"


# instance fields
.field private final assigned:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private final clazz:Lorg/junit/runners/model/TestClass;

.field private final unassigned:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Lorg/junit/runners/model/TestClass;)V
    .registers 4
    .param p3, "clazz"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ">;",
            "Lorg/junit/runners/model/TestClass;",
            ")V"
        }
    .end annotation

    .line 29
    .local p1, "assigned":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    .local p2, "unassigned":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/ParameterSignature;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lorg/junit/experimental/theories/internal/Assignments;->unassigned:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lorg/junit/experimental/theories/internal/Assignments;->assigned:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lorg/junit/experimental/theories/internal/Assignments;->clazz:Lorg/junit/runners/model/TestClass;

    .line 33
    return-void
.end method

.method public static allUnassigned(Ljava/lang/reflect/Method;Lorg/junit/runners/model/TestClass;)Lorg/junit/experimental/theories/internal/Assignments;
    .registers 5
    .param p0, "testMethod"    # Ljava/lang/reflect/Method;
    .param p1, "testClass"    # Lorg/junit/runners/model/TestClass;

    .line 42
    nop

    .line 43
    invoke-virtual {p1}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lorg/junit/experimental/theories/ParameterSignature;->signatures(Ljava/lang/reflect/Constructor;)Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "signatures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/ParameterSignature;>;"
    invoke-static {p0}, Lorg/junit/experimental/theories/ParameterSignature;->signatures(Ljava/lang/reflect/Method;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    new-instance v1, Lorg/junit/experimental/theories/internal/Assignments;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v0, p1}, Lorg/junit/experimental/theories/internal/Assignments;-><init>(Ljava/util/List;Ljava/util/List;Lorg/junit/runners/model/TestClass;)V

    return-object v1
.end method

.method private buildParameterSupplierFromClass(Ljava/lang/Class;)Lorg/junit/experimental/theories/ParameterSupplier;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/experimental/theories/ParameterSupplier;",
            ">;)",
            "Lorg/junit/experimental/theories/ParameterSupplier;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/experimental/theories/ParameterSupplier;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 114
    .local v0, "supplierConstructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_2d

    aget-object v4, v0, v3

    .line 115
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 116
    .local v5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2a

    aget-object v6, v5, v2

    const-class v8, Lorg/junit/runners/model/TestClass;

    .line 117
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 118
    new-array v1, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/junit/experimental/theories/internal/Assignments;->clazz:Lorg/junit/runners/model/TestClass;

    aput-object v3, v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/theories/ParameterSupplier;

    return-object v1

    .line 114
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 122
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/theories/ParameterSupplier;

    return-object v1
.end method

.method private generateAssignmentsFromTypeAlone(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/List;
    .registers 4
    .param p1, "unassigned"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Lorg/junit/experimental/theories/ParameterSignature;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 89
    .local v0, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 90
    new-instance v1, Lorg/junit/experimental/theories/internal/EnumSupplier;

    invoke-direct {v1, v0}, Lorg/junit/experimental/theories/internal/EnumSupplier;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Lorg/junit/experimental/theories/internal/EnumSupplier;->getValueSources(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 91
    :cond_14
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_2a

    .line 94
    :cond_25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 92
    :cond_2a
    :goto_2a
    new-instance v1, Lorg/junit/experimental/theories/internal/BooleanSupplier;

    invoke-direct {v1}, Lorg/junit/experimental/theories/internal/BooleanSupplier;-><init>()V

    invoke-virtual {v1, p1}, Lorg/junit/experimental/theories/internal/BooleanSupplier;->getValueSources(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getConstructorParameterCount()I
    .registers 3

    .line 139
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/Assignments;->clazz:Lorg/junit/runners/model/TestClass;

    .line 140
    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/experimental/theories/ParameterSignature;->signatures(Ljava/lang/reflect/Constructor;)Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, "signatures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/ParameterSignature;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 142
    .local v1, "constructorParameterCount":I
    return v1
.end method

.method private getSupplier(Lorg/junit/experimental/theories/ParameterSignature;)Lorg/junit/experimental/theories/ParameterSupplier;
    .registers 5
    .param p1, "unassigned"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    const-class v0, Lorg/junit/experimental/theories/ParametersSuppliedBy;

    .line 101
    invoke-virtual {p1, v0}, Lorg/junit/experimental/theories/ParameterSignature;->findDeepAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/theories/ParametersSuppliedBy;

    .line 103
    .local v0, "annotation":Lorg/junit/experimental/theories/ParametersSuppliedBy;
    if-eqz v0, :cond_13

    .line 104
    invoke-interface {v0}, Lorg/junit/experimental/theories/ParametersSuppliedBy;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/junit/experimental/theories/internal/Assignments;->buildParameterSupplierFromClass(Ljava/lang/Class;)Lorg/junit/experimental/theories/ParameterSupplier;

    move-result-object v1

    return-object v1

    .line 106
    :cond_13
    new-instance v1, Lorg/junit/experimental/theories/internal/AllMembersSupplier;

    iget-object v2, p0, Lorg/junit/experimental/theories/internal/Assignments;->clazz:Lorg/junit/runners/model/TestClass;

    invoke-direct {v1, v2}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;-><init>(Lorg/junit/runners/model/TestClass;)V

    return-object v1
.end method


# virtual methods
.method public assignNext(Lorg/junit/experimental/theories/PotentialAssignment;)Lorg/junit/experimental/theories/internal/Assignments;
    .registers 7
    .param p1, "source"    # Lorg/junit/experimental/theories/PotentialAssignment;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/junit/experimental/theories/internal/Assignments;->assigned:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .local v0, "potentialAssignments":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lorg/junit/experimental/theories/internal/Assignments;

    iget-object v2, p0, Lorg/junit/experimental/theories/internal/Assignments;->unassigned:Ljava/util/List;

    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 61
    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/junit/experimental/theories/internal/Assignments;->clazz:Lorg/junit/runners/model/TestClass;

    invoke-direct {v1, v0, v2, v3}, Lorg/junit/experimental/theories/internal/Assignments;-><init>(Ljava/util/List;Ljava/util/List;Lorg/junit/runners/model/TestClass;)V

    return-object v1
.end method

.method public getActualValues(II)[Ljava/lang/Object;
    .registers 7
    .param p1, "start"    # I
    .param p2, "stop"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    .line 67
    sub-int v0, p2, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .local v0, "values":[Ljava/lang/Object;
    move v1, p1

    .local v1, "i":I
    :goto_5
    if-ge v1, p2, :cond_1a

    .line 69
    sub-int v2, v1, p1

    iget-object v3, p0, Lorg/junit/experimental/theories/internal/Assignments;->assigned:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/experimental/theories/PotentialAssignment;

    invoke-virtual {v3}, Lorg/junit/experimental/theories/PotentialAssignment;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 71
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method public getAllArguments()[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/Assignments;->assigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/junit/experimental/theories/internal/Assignments;->getActualValues(II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentStrings(Z)[Ljava/lang/Object;
    .registers 5
    .param p1, "nullsOk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/Assignments;->assigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 148
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 149
    iget-object v2, p0, Lorg/junit/experimental/theories/internal/Assignments;->assigned:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/experimental/theories/PotentialAssignment;

    invoke-virtual {v2}, Lorg/junit/experimental/theories/PotentialAssignment;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 151
    .end local v1    # "i":I
    :cond_1d
    return-object v0
.end method

.method public getConstructorArguments()[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lorg/junit/experimental/theories/internal/Assignments;->getConstructorParameterCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/junit/experimental/theories/internal/Assignments;->getActualValues(II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMethodArguments()[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lorg/junit/experimental/theories/internal/Assignments;->getConstructorParameterCount()I

    move-result v0

    iget-object v1, p0, Lorg/junit/experimental/theories/internal/Assignments;->assigned:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/junit/experimental/theories/internal/Assignments;->getActualValues(II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/Assignments;->unassigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public nextUnassigned()Lorg/junit/experimental/theories/ParameterSignature;
    .registers 3

    .line 54
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/Assignments;->unassigned:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/theories/ParameterSignature;

    return-object v0
.end method

.method public potentialsForNextUnassigned()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lorg/junit/experimental/theories/internal/Assignments;->nextUnassigned()Lorg/junit/experimental/theories/ParameterSignature;

    move-result-object v0

    .line 77
    .local v0, "unassigned":Lorg/junit/experimental/theories/ParameterSignature;
    invoke-direct {p0, v0}, Lorg/junit/experimental/theories/internal/Assignments;->getSupplier(Lorg/junit/experimental/theories/ParameterSignature;)Lorg/junit/experimental/theories/ParameterSupplier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/junit/experimental/theories/ParameterSupplier;->getValueSources(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "assignments":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 80
    invoke-direct {p0, v0}, Lorg/junit/experimental/theories/internal/Assignments;->generateAssignmentsFromTypeAlone(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/List;

    move-result-object v1

    .line 83
    :cond_16
    return-object v1
.end method
