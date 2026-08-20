.class public abstract Lgov/nist/javax/sip/address/NetObject;
.super Lgov/nist/core/GenericObject;
.source "NetObject.java"


# static fields
.field protected static final greylist CORE_PACKAGE:Ljava/lang/String; = "gov.nist.core"

.field protected static final greylist GRUU:Ljava/lang/String; = "gr"

.field protected static final greylist LR:Ljava/lang/String; = "lr"

.field protected static final greylist MADDR:Ljava/lang/String; = "maddr"

.field protected static final greylist METHOD:Ljava/lang/String; = "method"

.field protected static final greylist NET_PACKAGE:Ljava/lang/String; = "gov.nist.javax.sip.address"

.field protected static final greylist PARSER_PACKAGE:Ljava/lang/String; = "gov.nist.javax.sip.parser"

.field protected static final greylist PHONE:Ljava/lang/String; = "phone"

.field protected static final greylist SIP:Ljava/lang/String; = "sip"

.field protected static final greylist SIPS:Ljava/lang/String; = "sips"

.field protected static final greylist TCP:Ljava/lang/String; = "tcp"

.field protected static final greylist TLS:Ljava/lang/String; = "tls"

.field protected static final greylist TRANSPORT:Ljava/lang/String; = "transport"

.field protected static final greylist TTL:Ljava/lang/String; = "ttl"

.field protected static final greylist UDP:Ljava/lang/String; = "udp"

.field protected static final greylist USER:Ljava/lang/String; = "user"

.field protected static final whitelist serialVersionUID:J = 0x5558ed4c6a6e4319L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 77
    return-void
.end method


# virtual methods
.method public greylist debugDump()Ljava/lang/String;
    .registers 14

    .line 284
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/javax/sip/address/NetObject;->stringRepresentation:Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 286
    .local v0, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 287
    const-string v1, "{"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 289
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    array-length v4, v2

    const-string v5, "}"

    if-ge v3, v4, :cond_19d

    .line 290
    aget-object v4, v2, v3

    .line 292
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 293
    .local v6, "modifier":I
    and-int/lit8 v7, v6, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2b

    .line 294
    goto/16 :goto_199

    .line 295
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 296
    .local v7, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 297
    .local v8, "fieldName":Ljava/lang/String;
    const-string v9, "stringRepresentation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3d

    .line 299
    goto/16 :goto_199

    .line 301
    :cond_3d
    const-string v9, "indentation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_47

    .line 303
    goto/16 :goto_199

    .line 305
    :cond_47
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 308
    :try_start_5d
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 309
    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "fname":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 311
    const-string v9, "int"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8b

    .line 312
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    .line 313
    .local v9, "intfield":I
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/address/NetObject;->sprint(I)V

    .line 314
    .end local v9    # "intfield":I
    goto :goto_ec

    :cond_8b
    const-string v9, "short"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9b

    .line 315
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v9

    .line 316
    .local v9, "shortField":S
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/address/NetObject;->sprint(S)V

    .line 317
    .end local v9    # "shortField":S
    goto :goto_ec

    :cond_9b
    const-string v9, "char"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_ab

    .line 318
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v9

    .line 319
    .local v9, "charField":C
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/address/NetObject;->sprint(C)V

    .line 320
    .end local v9    # "charField":C
    goto :goto_ec

    :cond_ab
    const-string v9, "long"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_bb

    .line 321
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v9

    .line 322
    .local v9, "longField":J
    invoke-virtual {p0, v9, v10}, Lgov/nist/javax/sip/address/NetObject;->sprint(J)V

    .line 323
    .end local v9    # "longField":J
    goto :goto_ec

    :cond_bb
    const-string v9, "boolean"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_cb

    .line 324
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v9

    .line 325
    .local v9, "booleanField":Z
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/address/NetObject;->sprint(Z)V

    .line 326
    .end local v9    # "booleanField":Z
    goto :goto_ec

    :cond_cb
    const-string v9, "double"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_db

    .line 327
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v9

    .line 328
    .local v9, "doubleField":D
    invoke-virtual {p0, v9, v10}, Lgov/nist/javax/sip/address/NetObject;->sprint(D)V

    .end local v9    # "doubleField":D
    goto :goto_eb

    .line 329
    :cond_db
    const-string v9, "float"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_eb

    .line 330
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v9

    .line 331
    .local v9, "floatField":F
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/address/NetObject;->sprint(F)V

    goto :goto_ec

    .line 329
    .end local v9    # "floatField":F
    :cond_eb
    :goto_eb
    nop

    .line 333
    .end local v5    # "fname":Ljava/lang/String;
    :goto_ec
    goto/16 :goto_196

    :cond_ee
    const-class v9, Lgov/nist/core/GenericObject;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9
    :try_end_f4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5d .. :try_end_f4} :catch_197

    const-string v11, "<null>"

    if-eqz v9, :cond_117

    .line 334
    :try_start_f8
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_112

    .line 335
    nop

    .line 336
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/core/GenericObject;

    iget v9, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v5

    .line 335
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_196

    .line 339
    :cond_112
    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_196

    .line 342
    :cond_117
    const-class v9, Lgov/nist/core/GenericObjectList;

    .line 343
    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_13c

    .line 344
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_138

    .line 345
    nop

    .line 346
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/core/GenericObjectList;

    iget v9, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto :goto_196

    .line 349
    :cond_138
    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto :goto_196

    .line 355
    :cond_13c
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_163

    .line 356
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto :goto_17b

    .line 358
    :cond_163
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 361
    :goto_17b
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_190

    .line 363
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    goto :goto_193

    .line 365
    :cond_190
    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 367
    :goto_193
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V
    :try_end_196
    .catch Ljava/lang/IllegalAccessException; {:try_start_f8 .. :try_end_196} :catch_197

    .line 371
    :goto_196
    goto :goto_199

    .line 369
    :catch_197
    move-exception v5

    .line 370
    .local v5, "ex1":Ljava/lang/IllegalAccessException;
    nop

    .line 289
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v6    # "modifier":I
    .end local v7    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldName":Ljava/lang/String;
    :goto_199
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_19

    .line 373
    .end local v3    # "i":I
    :cond_19d
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lgov/nist/javax/sip/address/NetObject;->stringRepresentation:Ljava/lang/String;

    return-object v1
.end method

.method public greylist debugDump(I)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # I

    .line 386
    iget v0, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    .line 387
    .local v0, "save":I
    iput p1, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    .line 388
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObject;->debugDump()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "retval":Ljava/lang/String;
    iput v0, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    .line 390
    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 20
    .param p1, "that"    # Ljava/lang/Object;

    .line 84
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_14

    .line 85
    return v3

    .line 86
    :cond_14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 87
    .local v0, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v4

    move-object v4, v0

    .line 89
    .end local v0    # "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1e
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 90
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 91
    .local v7, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_28
    array-length v0, v6

    if-ge v8, v0, :cond_129

    .line 92
    aget-object v9, v6, v8

    .line 93
    .local v9, "f":Ljava/lang/reflect/Field;
    aget-object v10, v7, v8

    .line 95
    .local v10, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 96
    .local v11, "modifier":I
    and-int/lit8 v0, v11, 0x2

    const/4 v12, 0x2

    if-ne v0, v12, :cond_3a

    .line 97
    goto/16 :goto_125

    .line 98
    :cond_3a
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    .line 99
    .local v12, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    .line 100
    .local v13, "fieldName":Ljava/lang/String;
    const-string v0, "stringRepresentation"

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4c

    .line 101
    goto/16 :goto_125

    .line 103
    :cond_4c
    const-string v0, "indentation"

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_56

    .line 104
    goto/16 :goto_125

    .line 108
    :cond_56
    :try_start_56
    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 109
    invoke-virtual {v12}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "fname":Ljava/lang/String;
    const-string v14, "int"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_73

    .line 111
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    if-eq v14, v15, :cond_eb

    .line 112
    return v3

    .line 113
    :cond_73
    const-string v14, "short"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_86

    .line 114
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v14

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    if-eq v14, v15, :cond_eb

    .line 115
    return v3

    .line 116
    :cond_86
    const-string v14, "char"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_99

    .line 117
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v14

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    if-eq v14, v15, :cond_eb

    .line 118
    return v3

    .line 119
    :cond_99
    const-string v14, "long"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_ae

    .line 120
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v14

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_eb

    .line 121
    return v3

    .line 122
    :cond_ae
    const-string v14, "boolean"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_c1

    .line 123
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    if-eq v14, v15, :cond_eb

    .line 124
    return v3

    .line 125
    :cond_c1
    const-string v14, "double"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_d6

    .line 126
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v14

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_eb

    .line 127
    return v3

    .line 128
    :cond_d6
    const-string v14, "float"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_eb

    .line 129
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v14

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_eb

    .line 130
    return v3

    .line 132
    .end local v0    # "fname":Ljava/lang/String;
    :cond_eb
    goto :goto_120

    :cond_ec
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-ne v0, v14, :cond_f7

    .line 133
    goto :goto_125

    .line 134
    :cond_f7
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_104

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_104

    .line 135
    return v3

    .line 136
    :cond_104
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_111

    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_111

    .line 137
    return v3

    .line 138
    :cond_111
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_11d
    .catch Ljava/lang/IllegalAccessException; {:try_start_56 .. :try_end_11d} :catch_121

    if-nez v0, :cond_120

    .line 139
    return v3

    .line 142
    :cond_120
    :goto_120
    goto :goto_125

    .line 140
    :catch_121
    move-exception v0

    .line 141
    .local v0, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 91
    .end local v0    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v9    # "f":Ljava/lang/reflect/Field;
    .end local v10    # "g":Ljava/lang/reflect/Field;
    .end local v11    # "modifier":I
    .end local v12    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "fieldName":Ljava/lang/String;
    :goto_125
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_28

    .line 144
    .end local v8    # "i":I
    :cond_129
    const-class v0, Lgov/nist/javax/sip/address/NetObject;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 145
    nop

    .line 151
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v7    # "hisfields":[Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    return v0

    .line 147
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    .restart local v7    # "hisfields":[Ljava/lang/reflect/Field;
    :cond_134
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 148
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 150
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v7    # "hisfields":[Ljava/lang/reflect/Field;
    goto/16 :goto_1e
.end method

.method public greylist match(Ljava/lang/Object;)Z
    .registers 23
    .param p1, "other"    # Ljava/lang/Object;

    .line 168
    move-object/from16 v1, p0

    const/4 v2, 0x1

    if-nez p1, :cond_6

    .line 169
    return v2

    .line 170
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_16

    .line 171
    return v3

    .line 172
    :cond_16
    move-object/from16 v4, p1

    check-cast v4, Lgov/nist/core/GenericObject;

    .line 176
    .local v4, "that":Lgov/nist/core/GenericObject;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 177
    .local v0, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v6, v5

    move-object v5, v0

    .line 179
    .end local v0    # "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v6, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_24
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 180
    .local v7, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 181
    .local v8, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_2e
    array-length v0, v7

    if-ge v9, v0, :cond_1b3

    .line 182
    aget-object v10, v7, v9

    .line 183
    .local v10, "f":Ljava/lang/reflect/Field;
    aget-object v11, v8, v9

    .line 185
    .local v11, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 186
    .local v12, "modifier":I
    and-int/lit8 v0, v12, 0x2

    const/4 v13, 0x2

    if-ne v0, v13, :cond_40

    .line 187
    goto/16 :goto_1ae

    .line 188
    :cond_40
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 189
    .local v13, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "fieldName":Ljava/lang/String;
    const-string v0, "stringRepresentation"

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_52

    .line 191
    goto/16 :goto_1ae

    .line 193
    :cond_52
    const-string v0, "indentation"

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5c

    .line 194
    goto/16 :goto_1ae

    .line 198
    :cond_5c
    :try_start_5c
    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 199
    invoke-virtual {v13}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "fname":Ljava/lang/String;
    const-string v15, "int"

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_79

    .line 201
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    if-eq v15, v2, :cond_f1

    .line 202
    return v3

    .line 203
    :cond_79
    const-string v2, "short"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8c

    .line 204
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    if-eq v2, v15, :cond_f1

    .line 205
    return v3

    .line 206
    :cond_8c
    const-string v2, "char"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9f

    .line 207
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    if-eq v2, v15, :cond_f1

    .line 208
    return v3

    .line 209
    :cond_9f
    const-string v2, "long"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b4

    .line 210
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v19

    cmp-long v2, v17, v19

    if-eqz v2, :cond_f1

    .line 211
    return v3

    .line 212
    :cond_b4
    const-string v2, "boolean"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c7

    .line 213
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    if-eq v2, v15, :cond_f1

    .line 214
    return v3

    .line 215
    :cond_c7
    const-string v2, "double"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_dc

    .line 216
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v17

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v19

    cmpl-double v2, v17, v19

    if-eqz v2, :cond_f1

    .line 217
    return v3

    .line 218
    :cond_dc
    const-string v2, "float"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f1

    .line 219
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    cmpl-float v2, v2, v15

    if-eqz v2, :cond_f1

    .line 220
    return v3

    .line 222
    .end local v0    # "fname":Ljava/lang/String;
    :cond_f1
    goto/16 :goto_1a6

    .line 223
    :cond_f3
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, "myObj":Ljava/lang/Object;
    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 225
    .local v2, "hisObj":Ljava/lang/Object;
    if-eqz v2, :cond_100

    if-nez v0, :cond_100

    .line 226
    return v3

    .line 227
    :cond_100
    if-nez v2, :cond_106

    if-eqz v0, :cond_106

    .line 228
    goto/16 :goto_1ae

    .line 229
    :cond_106
    if-nez v2, :cond_10c

    if-nez v0, :cond_10c

    .line 230
    goto/16 :goto_1ae

    .line 231
    :cond_10c
    instance-of v15, v2, Ljava/lang/String;

    if-eqz v15, :cond_133

    instance-of v15, v0, Ljava/lang/String;

    if-eqz v15, :cond_133

    .line 234
    move-object v15, v2

    check-cast v15, Ljava/lang/String;
    :try_end_117
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_117} :catch_1aa

    :try_start_117
    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 235
    const/4 v3, 0x0

    goto/16 :goto_1ae

    .line 236
    :cond_122
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 237
    invoke-virtual {v3, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_130

    .line 239
    const/4 v3, 0x0

    return v3

    .line 237
    :cond_130
    const/4 v3, 0x0

    goto/16 :goto_1a6

    .line 240
    :cond_133
    nop

    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_178

    .line 242
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_178

    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_178

    move-object v3, v2

    check-cast v3, Lgov/nist/core/GenericObject;

    .line 244
    invoke-virtual {v3}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v3

    if-eqz v3, :cond_178

    .line 246
    move-object v3, v0

    check-cast v3, Lgov/nist/core/GenericObject;

    .line 247
    invoke-virtual {v3}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "myObjEncoded":Ljava/lang/String;
    move-object v15, v2

    check-cast v15, Lgov/nist/core/GenericObject;

    .line 249
    invoke-virtual {v15}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v15

    invoke-interface {v15, v3}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    move-result v15

    .line 251
    .local v15, "retval":Z
    if-nez v15, :cond_176

    .line 252
    const/16 v16, 0x0

    return v16

    .line 253
    .end local v3    # "myObjEncoded":Ljava/lang/String;
    .end local v15    # "retval":Z
    :cond_176
    const/4 v3, 0x0

    goto :goto_1a6

    .line 254
    :cond_178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_18d

    move-object v3, v0

    check-cast v3, Lgov/nist/core/GenericObject;

    .line 255
    invoke-virtual {v3, v2}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18d

    .line 256
    const/4 v3, 0x0

    return v3

    .line 257
    :cond_18d
    nop

    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    move-object v3, v0

    check-cast v3, Lgov/nist/core/GenericObjectList;

    .line 259
    invoke-virtual {v3, v2}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z

    move-result v3
    :try_end_19f
    .catch Ljava/lang/IllegalAccessException; {:try_start_117 .. :try_end_19f} :catch_1a7

    if-nez v3, :cond_1a3

    .line 260
    const/4 v3, 0x0

    return v3

    .line 259
    :cond_1a3
    const/4 v3, 0x0

    goto :goto_1a6

    .line 258
    :cond_1a5
    const/4 v3, 0x0

    .line 264
    .end local v0    # "myObj":Ljava/lang/Object;
    .end local v2    # "hisObj":Ljava/lang/Object;
    :goto_1a6
    goto :goto_1ae

    .line 262
    :catch_1a7
    move-exception v0

    const/4 v3, 0x0

    goto :goto_1ab

    :catch_1aa
    move-exception v0

    .line 263
    .local v0, "ex1":Ljava/lang/IllegalAccessException;
    :goto_1ab
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 181
    .end local v0    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v10    # "f":Ljava/lang/reflect/Field;
    .end local v11    # "g":Ljava/lang/reflect/Field;
    .end local v12    # "modifier":I
    .end local v13    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "fieldName":Ljava/lang/String;
    :goto_1ae
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x1

    goto/16 :goto_2e

    .line 266
    .end local v9    # "i":I
    :cond_1b3
    const-class v0, Lgov/nist/javax/sip/address/NetObject;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 267
    nop

    .line 273
    .end local v7    # "fields":[Ljava/lang/reflect/Field;
    .end local v8    # "hisfields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    return v2

    .line 269
    .restart local v7    # "fields":[Ljava/lang/reflect/Field;
    .restart local v8    # "hisfields":[Ljava/lang/reflect/Field;
    :cond_1be
    const/4 v2, 0x1

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    .line 270
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 272
    .end local v7    # "fields":[Ljava/lang/reflect/Field;
    .end local v8    # "hisfields":[Ljava/lang/reflect/Field;
    goto/16 :goto_24
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 398
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObject;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
