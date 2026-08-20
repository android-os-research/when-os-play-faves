.class public Lorg/apache/commons/lang3/BooleanUtils;
.super Ljava/lang/Object;
.source "BooleanUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs and([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    if-eqz p0, :cond_25

    .line 975
    array-length v0, p0

    if-eqz v0, :cond_1d

    .line 979
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object p0

    .line 980
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->and([Z)Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_14

    :cond_12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_14} :catch_15

    :goto_14
    return-object p0

    .line 982
    :catch_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The array must not contain any null elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 976
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 973
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs and([Z)Z
    .registers 5

    if-eqz p0, :cond_1c

    .line 940
    array-length v0, p0

    if-eqz v0, :cond_14

    .line 943
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_12

    aget-boolean v3, p0, v2

    if-nez v3, :cond_f

    return v1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    const/4 p0, 0x1

    return p0

    .line 941
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 938
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compare(ZZ)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, -0x1

    :goto_9
    return p0
.end method

.method public static isFalse(Ljava/lang/Boolean;)Z
    .registers 2

    .line 123
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNotFalse(Ljava/lang/Boolean;)Z
    .registers 1

    .line 141
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->isFalse(Ljava/lang/Boolean;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotTrue(Ljava/lang/Boolean;)Z
    .registers 1

    .line 105
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isTrue(Ljava/lang/Boolean;)Z
    .registers 2

    .line 87
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static negate(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_d
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_f
    return-object p0
.end method

.method public static varargs or([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    if-eqz p0, :cond_25

    .line 1043
    array-length v0, p0

    if-eqz v0, :cond_1d

    .line 1047
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object p0

    .line 1048
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->or([Z)Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_14

    :cond_12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_14} :catch_15

    :goto_14
    return-object p0

    .line 1050
    :catch_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The array must not contain any null elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1044
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1041
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs or([Z)Z
    .registers 5

    if-eqz p0, :cond_1c

    .line 1008
    array-length v0, p0

    if-eqz v0, :cond_14

    .line 1011
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_13

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    return v1

    .line 1009
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1006
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBoolean(I)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static toBoolean(III)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-ne p0, p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 277
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Integer did not match either specified value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBoolean(Ljava/lang/Boolean;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 159
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static toBoolean(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_a

    if-nez p1, :cond_7

    return v1

    :cond_7
    if-nez p2, :cond_18

    return v0

    .line 305
    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    return v1

    .line 307
    :cond_11
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    return v0

    .line 310
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Integer did not match either specified value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .registers 2

    .line 741
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static toBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-ne p0, p2, :cond_8

    return v1

    :cond_8
    if-eqz p0, :cond_18

    .line 764
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    return v0

    .line 766
    :cond_11
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    return v1

    .line 770
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The String did not match either specified value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBooleanDefaultIfNull(Ljava/lang/Boolean;Z)Z
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 182
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static toBooleanObject(I)Ljava/lang/Boolean;
    .registers 1

    if-nez p0, :cond_5

    .line 220
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    return-object p0
.end method

.method public static toBooleanObject(IIII)Ljava/lang/Boolean;
    .registers 4

    if-ne p0, p1, :cond_5

    .line 340
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    if-ne p0, p2, :cond_a

    .line 343
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_a
    if-ne p0, p3, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 348
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Integer did not match any specified value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 246
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_d

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_d
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_f
    return-object p0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_10

    if-nez p1, :cond_8

    .line 379
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_8
    if-nez p2, :cond_d

    .line 382
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_d
    if-nez p3, :cond_29

    return-object v0

    .line 387
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 388
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 389
    :cond_19
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 390
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 391
    :cond_22
    invoke-virtual {p0, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    return-object v0

    .line 394
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Integer did not match any specified value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 17

    move-object/from16 v0, p0

    const-string v1, "true"

    if-ne v0, v1, :cond_9

    .line 577
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_9
    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 582
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x54

    const/16 v4, 0x59

    const/16 v5, 0x74

    const/16 v6, 0x79

    const/16 v7, 0x4e

    const/16 v8, 0x6e

    const/16 v9, 0x46

    const/16 v10, 0x66

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v12, :cond_f2

    const/4 v15, 0x2

    if-eq v2, v15, :cond_cb

    const/16 v7, 0x53

    const/16 v8, 0x73

    const/16 v1, 0x45

    const/16 v13, 0x65

    const/4 v14, 0x3

    if-eq v2, v14, :cond_9a

    const/4 v4, 0x4

    if-eq v2, v4, :cond_6f

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3c

    :cond_39
    const/4 v0, 0x0

    goto/16 :goto_110

    .line 640
    :cond_3c
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 641
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 642
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 643
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 644
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v10, :cond_54

    if-ne v2, v9, :cond_39

    :cond_54
    const/16 v2, 0x61

    if-eq v3, v2, :cond_5c

    const/16 v2, 0x41

    if-ne v3, v2, :cond_39

    :cond_5c
    const/16 v2, 0x6c

    if-eq v5, v2, :cond_64

    const/16 v2, 0x4c

    if-ne v5, v2, :cond_39

    :cond_64
    if-eq v6, v8, :cond_68

    if-ne v6, v7, :cond_39

    :cond_68
    if-eq v0, v13, :cond_6c

    if-ne v0, v1, :cond_39

    .line 650
    :cond_6c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 627
    :cond_6f
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 628
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 629
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 630
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v5, :cond_83

    if-ne v2, v3, :cond_39

    :cond_83
    const/16 v2, 0x72

    if-eq v4, v2, :cond_8b

    const/16 v2, 0x52

    if-ne v4, v2, :cond_39

    :cond_8b
    const/16 v2, 0x75

    if-eq v6, v2, :cond_93

    const/16 v2, 0x55

    if-ne v6, v2, :cond_39

    :cond_93
    if-eq v0, v13, :cond_97

    if-ne v0, v1, :cond_39

    .line 635
    :cond_97
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 611
    :cond_9a
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 612
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 613
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v6, :cond_ae

    if-ne v2, v4, :cond_ab

    goto :goto_ae

    :cond_ab
    const/16 v1, 0x6f

    goto :goto_b7

    :cond_ae
    :goto_ae
    if-eq v3, v13, :cond_b2

    if-ne v3, v1, :cond_ab

    :cond_b2
    if-eq v0, v8, :cond_c8

    if-ne v0, v7, :cond_ab

    goto :goto_c8

    :goto_b7
    if-eq v2, v1, :cond_bd

    const/16 v1, 0x4f

    if-ne v2, v1, :cond_39

    :cond_bd
    if-eq v3, v10, :cond_c1

    if-ne v3, v9, :cond_39

    :cond_c1
    if-eq v0, v10, :cond_c5

    if-ne v0, v9, :cond_39

    .line 622
    :cond_c5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 617
    :cond_c8
    :goto_c8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 598
    :cond_cb
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 599
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_db

    const/16 v2, 0x4f

    if-ne v1, v2, :cond_e0

    :cond_db
    if-eq v0, v8, :cond_ef

    if-ne v0, v7, :cond_e0

    goto :goto_ef

    :cond_e0
    if-eq v1, v8, :cond_e4

    if-ne v1, v7, :cond_39

    :cond_e4
    const/16 v1, 0x6f

    if-eq v0, v1, :cond_ec

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_39

    .line 606
    :cond_ec
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 602
    :cond_ef
    :goto_ef
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 584
    :cond_f2
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_114

    if-eq v0, v4, :cond_114

    if-eq v0, v5, :cond_114

    if-eq v0, v3, :cond_114

    const/16 v1, 0x31

    if-ne v0, v1, :cond_103

    goto :goto_114

    :cond_103
    if-eq v0, v8, :cond_111

    if-eq v0, v7, :cond_111

    if-eq v0, v10, :cond_111

    if-eq v0, v9, :cond_111

    const/16 v1, 0x30

    if-ne v0, v1, :cond_39

    goto :goto_111

    :goto_110
    return-object v0

    .line 593
    :cond_111
    :goto_111
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 588
    :cond_114
    :goto_114
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static toBooleanObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_10

    if-nez p1, :cond_8

    .line 690
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_8
    if-nez p2, :cond_d

    .line 693
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_d
    if-nez p3, :cond_29

    return-object v0

    .line 698
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 699
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 700
    :cond_19
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 701
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 702
    :cond_22
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    return-object v0

    .line 706
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The String did not match any specified value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toInteger(Ljava/lang/Boolean;III)I
    .registers 4

    if-nez p0, :cond_3

    return p3

    .line 488
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_b

    :cond_a
    move p1, p2

    :goto_b
    return p1
.end method

.method public static toInteger(Z)I
    .registers 1

    return p0
.end method

.method public static toInteger(ZII)I
    .registers 3

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    move p1, p2

    :goto_4
    return p1
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 449
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d

    sget-object p0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    goto :goto_f

    :cond_d
    sget-object p0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    :goto_f
    return-object p0
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    if-nez p0, :cond_3

    return-object p3

    .line 527
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_b

    :cond_a
    move-object p1, p2

    :goto_b
    return-object p1
.end method

.method public static toIntegerObject(Z)Ljava/lang/Integer;
    .registers 1

    if-eqz p0, :cond_5

    .line 428
    sget-object p0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    goto :goto_7

    :cond_5
    sget-object p0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    :goto_7
    return-object p0
.end method

.method public static toIntegerObject(ZLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    move-object p1, p2

    :goto_4
    return-object p1
.end method

.method public static toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_3

    return-object p3

    .line 845
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_b

    :cond_a
    move-object p1, p2

    :goto_b
    return-object p1
.end method

.method public static toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    move-object p1, p2

    :goto_4
    return-object p1
.end method

.method public static toStringOnOff(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4

    const-string v0, "on"

    const-string v1, "off"

    const/4 v2, 0x0

    .line 806
    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringOnOff(Z)Ljava/lang/String;
    .registers 3

    const-string v0, "on"

    const-string v1, "off"

    .line 879
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringTrueFalse(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4

    const-string v0, "true"

    const-string v1, "false"

    const/4 v2, 0x0

    .line 789
    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringTrueFalse(Z)Ljava/lang/String;
    .registers 3

    const-string v0, "true"

    const-string v1, "false"

    .line 863
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringYesNo(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4

    const-string v0, "yes"

    const-string v1, "no"

    const/4 v2, 0x0

    .line 823
    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringYesNo(Z)Ljava/lang/String;
    .registers 3

    const-string v0, "yes"

    const-string v1, "no"

    .line 895
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs xor([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    if-eqz p0, :cond_25

    .line 1105
    array-length v0, p0

    if-eqz v0, :cond_1d

    .line 1109
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object p0

    .line 1110
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->xor([Z)Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_14

    :cond_12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_14} :catch_15

    :goto_14
    return-object p0

    .line 1112
    :catch_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The array must not contain any null elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1106
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1103
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs xor([Z)Z
    .registers 5

    if-eqz p0, :cond_19

    .line 1072
    array-length v0, p0

    if-eqz v0, :cond_11

    .line 1078
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_10

    aget-boolean v3, p0, v1

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_10
    return v2

    .line 1073
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1070
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
