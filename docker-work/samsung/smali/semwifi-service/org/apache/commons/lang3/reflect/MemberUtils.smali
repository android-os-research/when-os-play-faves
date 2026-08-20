.class abstract Lorg/apache/commons/lang3/reflect/MemberUtils;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    }
.end annotation


# static fields
.field private static final ACCESS_TEST:I = 0x7

.field private static final ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    .line 39
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareConstructorFit(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 103
    # invokes: Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object p0

    # invokes: Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method static compareMethodFit(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 120
    # invokes: Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object p0

    # invokes: Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method private static compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 136
    invoke-static {p2, p0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F

    move-result p0

    .line 137
    invoke-static {p2, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F

    move-result p1

    .line 138
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 196
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz p0, :cond_2c

    .line 199
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 200
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/high16 p1, 0x3e800000    # 0.25f

    add-float/2addr v0, p1

    goto :goto_2c

    :cond_24
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 210
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_c

    :cond_2c
    :goto_2c
    if-nez p0, :cond_31

    const/high16 p0, 0x3fc00000    # 1.5f

    add-float/2addr v0, p0

    :cond_31
    return v0
.end method

.method private static getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    if-nez p0, :cond_5

    const/high16 p0, 0x3fc00000    # 1.5f

    return p0

    :cond_5
    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    if-nez v1, :cond_14

    .line 238
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    move v0, v2

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eq p0, p1, :cond_2d

    .line 240
    sget-object v3, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v4, v3

    if-ge v1, v4, :cond_2d

    .line 241
    aget-object v4, v3, v1

    if-ne p0, v4, :cond_2a

    add-float/2addr v0, v2

    .line 243
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2a

    add-int/lit8 p0, v1, 0x1

    .line 244
    aget-object p0, v3, p0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2d
    return v0
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            ")F"
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs()Z

    move-result p1

    const/4 v1, 0x1

    .line 154
    array-length v2, v0

    if-eqz p1, :cond_d

    sub-int/2addr v2, v1

    :cond_d
    int-to-long v2, v2

    .line 155
    array-length v4, p0

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_18

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    :cond_18
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_1b
    int-to-long v7, v6

    cmp-long v7, v7, v2

    if-gez v7, :cond_2c

    .line 159
    aget-object v7, p0, v6

    aget-object v8, v0, v6

    invoke-static {v7, v8}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v7

    add-float/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_2c
    if-eqz p1, :cond_7f

    .line 164
    array-length p1, p0

    array-length v2, v0

    if-ge p1, v2, :cond_34

    move p1, v1

    goto :goto_35

    :cond_34
    move p1, v4

    .line 165
    :goto_35
    array-length v2, p0

    array-length v3, v0

    if-ne v2, v3, :cond_4a

    array-length v2, p0

    sub-int/2addr v2, v1

    aget-object v2, p0, v2

    if-eqz v2, :cond_4a

    array-length v2, p0

    sub-int/2addr v2, v1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4a

    move v4, v1

    .line 168
    :cond_4a
    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const v3, 0x3a83126f    # 0.001f

    if-eqz p1, :cond_60

    .line 171
    const-class p0, Ljava/lang/Object;

    invoke-static {v2, p0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result p0

    :goto_5d
    add-float/2addr p0, v3

    add-float/2addr v5, p0

    goto :goto_7f

    :cond_60
    if-eqz v4, :cond_6f

    .line 173
    array-length p1, p0

    sub-int/2addr p1, v1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 174
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result p0

    goto :goto_5d

    .line 177
    :cond_6f
    array-length p1, v0

    sub-int/2addr p1, v1

    :goto_71
    array-length v0, p0

    if-ge p1, v0, :cond_7f

    .line 178
    aget-object v0, p0, p1

    .line 179
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    add-float/2addr v0, v3

    add-float/2addr v5, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_71

    :cond_7f
    :goto_7f
    return v5
.end method

.method static isAccessible(Ljava/lang/reflect/Member;)Z
    .registers 2

    if-eqz p0, :cond_14

    .line 86
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method static isMatchingConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 256
    # invokes: Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 261
    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    return v1

    .line 265
    :cond_c
    invoke-virtual {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_41

    move p0, v2

    .line 267
    :goto_14
    array-length v3, v0

    sub-int/2addr v3, v1

    if-ge p0, v3, :cond_29

    array-length v3, p1

    if-ge p0, v3, :cond_29

    .line 268
    aget-object v3, p1, p0

    aget-object v4, v0, p0

    invoke-static {v3, v4, v1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v3

    if-nez v3, :cond_26

    return v2

    :cond_26
    add-int/lit8 p0, p0, 0x1

    goto :goto_14

    .line 272
    :cond_29
    array-length v3, v0

    sub-int/2addr v3, v1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 273
    :goto_31
    array-length v3, p1

    if-ge p0, v3, :cond_40

    .line 274
    aget-object v3, p1, p0

    invoke-static {v3, v0, v1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v3

    if-nez v3, :cond_3d

    return v2

    :cond_3d
    add-int/lit8 p0, p0, 0x1

    goto :goto_31

    :cond_40
    return v1

    :cond_41
    return v2
.end method

.method static isMatchingMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 252
    # invokes: Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static isPackageAccess(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method static setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_30

    .line 56
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_30

    .line 59
    :cond_a
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/Member;

    .line 60
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isPackageAccess(I)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x1

    .line 62
    :try_start_2c
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_2f} :catch_30

    return v1

    :catch_30
    :cond_30
    :goto_30
    return v0
.end method
