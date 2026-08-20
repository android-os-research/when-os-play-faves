.class Landroid/util/ReflectiveProperty;
.super Landroid/util/Property;
.source "ReflectiveProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property<",
        "TT;TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist PREFIX_GET:Ljava/lang/String; = "get"

.field private static final blacklist PREFIX_IS:Ljava/lang/String; = "is"

.field private static final blacklist PREFIX_SET:Ljava/lang/String; = "set"


# instance fields
.field private blacklist mField:Ljava/lang/reflect/Field;

.field private blacklist mGetter:Ljava/lang/reflect/Method;

.field private blacklist mSetter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 20
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "propertyHolder":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, ")"

    const-string v6, ") does not match Property type ("

    const-string v7, "Underlying type ("

    invoke-direct {v1, v3, v4}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 48
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 49
    .local v9, "firstLetter":C
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "theRest":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 51
    .local v12, "capitalizedName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 53
    .local v13, "getterName":Ljava/lang/String;
    const/4 v14, 0x0

    :try_start_44
    move-object v0, v14

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_44 .. :try_end_4d} :catch_4e

    .line 75
    goto :goto_6e

    .line 54
    :catch_4e
    move-exception v0

    move-object v15, v0

    .line 56
    .local v15, "e":Ljava/lang/NoSuchMethodException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "is"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 58
    :try_start_64
    move-object v0, v14

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_6d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_64 .. :try_end_6d} :catch_bf

    .line 74
    nop

    .line 76
    .end local v15    # "e":Ljava/lang/NoSuchMethodException;
    :goto_6e
    iget-object v0, v1, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 78
    .local v8, "getterType":Ljava/lang/Class;
    invoke-direct {v1, v3, v8}, Landroid/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "setterName":Ljava/lang/String;
    :try_start_8e
    new-array v0, v10, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v8, v0, v6

    invoke-virtual {v2, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;
    :try_end_99
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8e .. :try_end_99} :catch_9a

    .line 87
    goto :goto_9b

    .line 85
    :catch_9a
    move-exception v0

    .line 88
    :goto_9b
    return-void

    .line 79
    .end local v5    # "setterName":Ljava/lang/String;
    :cond_9c
    new-instance v0, Landroid/util/NoSuchPropertyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    .end local v8    # "getterType":Ljava/lang/Class;
    .restart local v15    # "e":Ljava/lang/NoSuchMethodException;
    :catch_bf
    move-exception v0

    move-object v8, v0

    .line 62
    .local v8, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_c1
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    .line 63
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "fieldType":Ljava/lang/Class;
    invoke-direct {v1, v3, v0}, Landroid/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_d2

    .line 68
    return-void

    .line 65
    :cond_d2
    new-instance v10, Landroid/util/NoSuchPropertyException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    .end local v8    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v9    # "firstLetter":C
    .end local v11    # "theRest":Ljava/lang/String;
    .end local v12    # "capitalizedName":Ljava/lang/String;
    .end local v13    # "getterName":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/NoSuchMethodException;
    .end local p0    # "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .end local p1    # "propertyHolder":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    .end local p3    # "name":Ljava/lang/String;
    throw v10
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c1 .. :try_end_f5} :catch_f5

    .line 69
    .end local v0    # "fieldType":Ljava/lang/Class;
    .restart local v8    # "e1":Ljava/lang/NoSuchMethodException;
    .restart local v9    # "firstLetter":C
    .restart local v11    # "theRest":Ljava/lang/String;
    .restart local v12    # "capitalizedName":Ljava/lang/String;
    .restart local v13    # "getterName":Ljava/lang/String;
    .restart local v15    # "e":Ljava/lang/NoSuchMethodException;
    .restart local p0    # "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .restart local p1    # "propertyHolder":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p2    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    .restart local p3    # "name":Ljava/lang/String;
    :catch_f5
    move-exception v0

    .line 71
    .local v0, "e2":Ljava/lang/NoSuchFieldException;
    new-instance v5, Landroid/util/NoSuchPropertyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No accessor method or field found for property with name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private blacklist typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 6
    .param p2, "getterType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/Class;",
            ")Z"
        }
    .end annotation

    .line 98
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x1

    if-eq p2, p1, :cond_4e

    .line 99
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    .line 100
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_12

    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_4c

    :cond_12
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_1a

    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_4c

    :cond_1a
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_22

    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_4c

    :cond_22
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_2a

    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_4c

    :cond_2a
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_32

    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_4c

    :cond_32
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_3a

    const-class v1, Ljava/lang/Short;

    if-eq p1, v1, :cond_4c

    :cond_3a
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_42

    const-class v1, Ljava/lang/Byte;

    if-eq p1, v1, :cond_4c

    :cond_42
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_4b

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v2

    :cond_4c
    :goto_4c
    return v0

    .line 109
    :cond_4d
    return v2

    .line 111
    :cond_4e
    return v0
.end method


# virtual methods
.method public whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 137
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 139
    const/4 v1, 0x0

    :try_start_5
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_c} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_c} :catch_d

    return-object v0

    .line 142
    :catch_d
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 140
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_18
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 145
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1f
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2f

    .line 147
    :try_start_23
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_27} :catch_28

    return-object v0

    .line 148
    :catch_28
    move-exception v0

    .line 149
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 153
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public whitelist isReadOnly()Z
    .registers 2

    .line 161
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    .line 118
    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_d} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_d} :catch_e

    .line 123
    goto :goto_28

    .line 121
    :catch_e
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 119
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_19
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 124
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_20
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_30

    .line 126
    :try_start_24
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_27} :catch_29

    .line 129
    nop

    .line 133
    :goto_28
    return-void

    .line 127
    :catch_29
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 131
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/ReflectiveProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
