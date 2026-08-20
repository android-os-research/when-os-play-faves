.class public Lorg/apache/commons/lang3/exception/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static final CAUSE_METHOD_NAMES:[Ljava/lang/String;

.field private static final NOT_FOUND:I = -0x1

.field static final WRAPPED_MARKER:Ljava/lang/String; = " [wrapped] "


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string v0, "getCause"

    const-string v1, "getNextException"

    const-string v2, "getTargetException"

    const-string v3, "getException"

    const-string v4, "getSourceException"

    const-string v5, "getRootCause"

    const-string v6, "getCausedByException"

    const-string v7, "getNested"

    const-string v8, "getLinkedException"

    const-string v9, "getNestedException"

    const-string v10, "getLinkedCause"

    const-string v11, "getThrowable"

    .line 48
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-nez p1, :cond_f

    .line 124
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_d

    return-object p1

    .line 129
    :cond_d
    sget-object p1, Lorg/apache/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 132
    :cond_f
    array-length v1, p1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    if-eqz v3, :cond_1e

    .line 134
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1e

    return-object v3

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_21
    return-object v0
.end method

.method private static getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 155
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_c} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-object p1, v1

    :goto_e
    if-eqz p1, :cond_25

    .line 160
    const-class v2, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_25

    :try_start_1c
    new-array v0, v0, [Ljava/lang/Object;

    .line 162
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_24} :catch_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_24} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    :cond_25
    return-object v1
.end method

.method public static getDefaultCauseMethodNames()[Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    sget-object v0, Lorg/apache/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 200
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .line 223
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    .line 224
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    goto :goto_18

    :cond_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    :goto_18
    return-object p0
.end method

.method public static getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2

    .line 239
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, v0

    .line 241
    :goto_8
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_5

    .line 260
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 262
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object p0

    .line 263
    array-length v0, p0

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v2, v0, -0x1

    .line 265
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    :goto_17
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_55

    if-eqz v0, :cond_29

    add-int/lit8 v4, v0, -0x1

    .line 269
    aget-object v4, p0, v4

    invoke-static {v4}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v4

    .line 270
    invoke-static {v3, v4}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2a

    :cond_29
    move-object v4, v3

    :goto_2a
    if-ne v0, v2, :cond_36

    .line 273
    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 275
    :cond_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [wrapped] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p0, v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :goto_50
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v3, v4

    goto :goto_17

    .line 279
    :cond_55
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method static getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 296
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 297
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    .line 300
    :cond_14
    :goto_14
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 301
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "at"

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3a

    .line 304
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3a

    const/4 v2, 0x1

    .line 306
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_3a
    if-eqz v2, :cond_14

    :cond_3c
    return-object p0
.end method

.method static getStackFrames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 324
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    :goto_e
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 328
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 330
    :cond_1c
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    .line 348
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 350
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 367
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 368
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 369
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getThrowableCount(Ljava/lang/Throwable;)I
    .registers 1

    .line 391
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-eqz p0, :cond_15

    .line 415
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 416
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_5

    :cond_15
    return-object v0
.end method

.method public static getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .registers 2

    .line 442
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    .line 443
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Throwable;

    return-object p0
.end method

.method public static hasCause(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .line 461
    instance-of v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;

    if-eqz v0, :cond_8

    .line 462
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 464
    :cond_8
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;IZ)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p0, :cond_39

    if-nez p1, :cond_6

    goto :goto_39

    :cond_6
    if-gez p2, :cond_9

    const/4 p2, 0x0

    .line 485
    :cond_9
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object p0

    .line 486
    array-length v1, p0

    if-lt p2, v1, :cond_11

    return v0

    :cond_11
    if-eqz p3, :cond_26

    .line 490
    :goto_13
    array-length p3, p0

    if-ge p2, p3, :cond_39

    .line 491
    aget-object p3, p0, p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_23

    return p2

    :cond_23
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    .line 496
    :cond_26
    :goto_26
    array-length p3, p0

    if-ge p2, p3, :cond_39

    .line 497
    aget-object p3, p0, p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_36

    return p2

    :cond_36
    add-int/lit8 p2, p2, 0x1

    goto :goto_26

    :cond_39
    :goto_39
    return v0
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 520
    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result p0

    return p0
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 543
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result p0

    return p0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 562
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result p0

    return p0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    .line 586
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result p0

    return p0
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;)V
    .registers 2

    .line 609
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "printStream"

    .line 636
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 637
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object p0

    .line 638
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    .line 639
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 641
    :cond_18
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "printWriter"

    .line 668
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 669
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object p0

    .line 670
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    .line 671
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 673
    :cond_18
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public static removeCommonFrames(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2f

    if-eqz p1, :cond_2f

    .line 688
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 689
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v0, :cond_2e

    if-ltz v1, :cond_2e

    .line 693
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 694
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 695
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 696
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_29
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_2e
    return-void

    .line 686
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The List must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rethrow(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TR;"
        }
    .end annotation

    .line 760
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->typeErasure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static throwableOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)Ljava/lang/Throwable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;IZ)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_49

    if-nez p1, :cond_6

    goto :goto_49

    :cond_6
    if-gez p2, :cond_9

    const/4 p2, 0x0

    .line 782
    :cond_9
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object p0

    .line 783
    array-length v1, p0

    if-lt p2, v1, :cond_11

    return-object v0

    :cond_11
    if-eqz p3, :cond_2e

    .line 787
    :goto_13
    array-length p3, p0

    if-ge p2, p3, :cond_49

    .line 788
    aget-object p3, p0, p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_2b

    .line 789
    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    :cond_2b
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    .line 793
    :cond_2e
    :goto_2e
    array-length p3, p0

    if-ge p2, p3, :cond_49

    .line 794
    aget-object p3, p0, p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_46

    .line 795
    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    :cond_46
    add-int/lit8 p2, p2, 0x1

    goto :goto_2e

    :cond_49
    :goto_49
    return-object v0
.end method

.method public static throwableOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 819
    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->throwableOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static throwableOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;I)Ljava/lang/Throwable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 844
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->throwableOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static throwableOfType(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 864
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->throwableOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static throwableOfType(Ljava/lang/Throwable;Ljava/lang/Class;I)Ljava/lang/Throwable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 889
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->throwableOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private static typeErasure(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TR;^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 900
    throw p0
.end method

.method public static wrapAndThrow(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TR;"
        }
    .end annotation

    .line 925
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_11

    .line 928
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_b

    .line 929
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 931
    :cond_b
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 926
    :cond_11
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method
