.class public Lorg/junit/runners/model/FrameworkField;
.super Lorg/junit/runners/model/FrameworkMember;
.source "FrameworkField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/junit/runners/model/FrameworkMember<",
        "Lorg/junit/runners/model/FrameworkField;",
        ">;"
    }
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 22
    invoke-direct {p0}, Lorg/junit/runners/model/FrameworkMember;-><init>()V

    .line 23
    if-eqz p1, :cond_14

    .line 27
    iput-object p1, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    .line 29
    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkField;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 32
    const/4 v0, 0x1

    :try_start_e
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_11} :catch_12

    .line 35
    goto :goto_13

    .line 33
    :catch_12
    move-exception v0

    .line 37
    :cond_13
    :goto_13
    return-void

    .line 24
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FrameworkField cannot be created without an underlying field."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 49
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method protected getModifiers()I
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method isBridgeMethod()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public isShadowedBy(Lorg/junit/runners/model/FrameworkField;)Z
    .registers 4
    .param p1, "otherMember"    # Lorg/junit/runners/model/FrameworkField;

    .line 54
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShadowedBy(Lorg/junit/runners/model/FrameworkMember;)Z
    .registers 2

    .line 14
    check-cast p1, Lorg/junit/runners/model/FrameworkField;

    invoke-virtual {p0, p1}, Lorg/junit/runners/model/FrameworkField;->isShadowedBy(Lorg/junit/runners/model/FrameworkField;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
