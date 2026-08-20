.class public Lcom/sec/ims/extensions/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllFields(Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 26
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 28
    .local v1, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 30
    .local v2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1d

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_1d

    .line 31
    invoke-static {v2}, Lcom/sec/ims/extensions/ReflectionUtils;->getAllFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 32
    .local v3, "superFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    .end local v3    # "superFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_1d
    return-object v0
.end method

.method public static getClassOf(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 107
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 38
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 42
    .local v2, "field":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_c

    .line 43
    return-object v2

    .line 44
    :cond_c
    if-eqz v0, :cond_13

    .line 45
    invoke-static {v0, p1}, Lcom/sec/ims/extensions/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_14

    return-object v1

    .line 47
    :cond_13
    return-object v1

    .line 49
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_14
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-class v3, Lcom/sec/ims/extensions/ReflectionUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz v0, :cond_42

    .line 54
    invoke-static {v0, p1}, Lcom/sec/ims/extensions/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    return-object v1

    .line 56
    :cond_42
    return-object v1
.end method

.method public static getGenericType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .registers 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 112
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    return-object v1
.end method

.method public static getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 86
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p0}, Lcom/sec/ims/extensions/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 87
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 88
    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 90
    :cond_c
    return-object v1
.end method

.method public static getValueOf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/ims/extensions/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 79
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_f

    .line 80
    invoke-static {v0, p1}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 82
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getValueOf(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_e

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    :cond_e
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_12} :catch_13

    return-object v0

    .line 72
    :catch_13
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not read value from Field!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 116
    const-string v0, "Could not invoke method!"

    if-nez p0, :cond_5

    .line 117
    return-void

    .line 120
    :cond_5
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_f

    .line 121
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 125
    :cond_f
    :try_start_f
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_12} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_12} :catch_14

    .line 130
    nop

    .line 131
    return-void

    .line 128
    :catch_14
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 126
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1b
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static varargs invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 134
    const-string v0, "Could not invoke method!"

    if-nez p0, :cond_6

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_6
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_10

    .line 139
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 143
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_14} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v0

    .line 146
    :catch_15
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 144
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1c
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setValueOf(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 95
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 99
    :cond_a
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_e

    .line 100
    return v1

    .line 101
    :catch_e
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not read value from Field!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
