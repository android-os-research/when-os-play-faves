.class final Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JsonToStringStyle"
.end annotation


# static fields
.field private static final FIELD_NAME_QUOTE:Ljava/lang/String; = "\""

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 3

    .line 2385
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x0

    .line 2387
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setUseClassName(Z)V

    .line 2388
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setUseIdentityHashCode(Z)V

    const-string v0, "{"

    .line 2390
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setContentStart(Ljava/lang/String;)V

    const-string v0, "}"

    .line 2391
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setContentEnd(Ljava/lang/String;)V

    const-string v0, "["

    .line 2393
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setArrayStart(Ljava/lang/String;)V

    const-string v0, "]"

    .line 2394
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setArrayEnd(Ljava/lang/String;)V

    const-string v0, ","

    .line 2396
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    const-string v0, ":"

    .line 2397
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setFieldNameValueSeparator(Ljava/lang/String;)V

    const-string v0, "null"

    .line 2399
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setNullText(Ljava/lang/String;)V

    const-string v0, "\"<"

    .line 2401
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setSummaryObjectStartText(Ljava/lang/String;)V

    const-string v0, ">\""

    .line 2402
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setSummaryObjectEndText(Ljava/lang/String;)V

    const-string v1, "\"<size="

    .line 2404
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setSizeStartText(Ljava/lang/String;)V

    .line 2405
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setSizeEndText(Ljava/lang/String;)V

    return-void
.end method

.method private appendValueAsString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3

    const/16 p0, 0x22

    .line 2648
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private isJsonArray(Ljava/lang/String;)Z
    .registers 3

    .line 2632
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getArrayStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2633
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getArrayEnd()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private isJsonObject(Ljava/lang/String;)Z
    .registers 3

    .line 2637
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getContentStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2638
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getContentEnd()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 1

    .line 2671
    sget-object p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .registers 6

    if-eqz p2, :cond_14

    .line 2560
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2565
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-void

    .line 2561
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2557
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .registers 6

    if-eqz p2, :cond_14

    .line 2480
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2485
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-void

    .line 2481
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2477
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .registers 6

    if-eqz p2, :cond_14

    .line 2496
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2501
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-void

    .line 2497
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2493
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .registers 6

    if-eqz p2, :cond_14

    .line 2512
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2517
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-void

    .line 2513
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2509
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .registers 6

    if-eqz p2, :cond_14

    .line 2528
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2533
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-void

    .line 2529
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2525
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .registers 6

    if-eqz p2, :cond_14

    .line 2448
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2453
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-void

    .line 2449
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2445
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .registers 6

    if-eqz p2, :cond_14

    .line 2432
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2437
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-void

    .line 2433
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2429
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .registers 6

    if-eqz p2, :cond_14

    .line 2416
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2421
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-void

    .line 2417
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2413
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .registers 6

    if-eqz p2, :cond_14

    .line 2464
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2469
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-void

    .line 2465
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2461
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .registers 6

    if-eqz p2, :cond_14

    .line 2544
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2549
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-void

    .line 2545
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FullDetail must be true when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2541
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .registers 4

    .line 2570
    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;->appendValueAsString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    if-nez p3, :cond_6

    .line 2577
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    .line 2581
    :cond_6
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_35

    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_f

    goto :goto_35

    .line 2586
    :cond_f
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_31

    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    goto :goto_31

    .line 2591
    :cond_18
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2592
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;->isJsonObject(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;->isJsonArray(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2d

    .line 2597
    :cond_29
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2593
    :cond_2d
    :goto_2d
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void

    .line 2587
    :cond_31
    :goto_31
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void

    .line 2582
    :cond_35
    :goto_35
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;->appendValueAsString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    if-eqz p3, :cond_50

    .line 2602
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_50

    .line 2603
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getContentStart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2606
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x1

    move v0, p3

    :cond_19
    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2607
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    goto :goto_37

    .line 2612
    :cond_34
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2614
    :goto_37
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2615
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_44

    .line 2617
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_19

    .line 2619
    :cond_44
    invoke-virtual {p0, p1, v2, v1, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_19

    .line 2624
    :cond_48
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getContentEnd()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 2628
    :cond_50
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_1e

    .line 2659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    .line 2655
    :cond_1e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
