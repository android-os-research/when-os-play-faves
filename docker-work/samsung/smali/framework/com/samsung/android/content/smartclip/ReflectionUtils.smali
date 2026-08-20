.class Lcom/samsung/android/content/smartclip/ReflectionUtils;
.super Ljava/lang/Object;
.source "SmartClipDataCropperImpl.java"


# static fields
.field public static final blacklist MATCH_TYPE_CLASS_NAME_ONLY:I = 0x1

.field public static final blacklist MATCH_TYPE_FULL_NAME:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ReflectionUtils"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dumpClassHierarchy(Ljava/lang/Object;)V
    .registers 10
    .param p0, "objToDump"    # Ljava/lang/Object;

    .line 1499
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1501
    .local v0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------- Class hierarchy dump start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectionUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    move-object v1, v0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_27
    if-eqz v1, :cond_6f

    .line 1504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- Class name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 1507
    .local v3, "clz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v3

    const/4 v5, 0x0

    :goto_49
    if-ge v5, v4, :cond_6a

    aget-object v6, v3, v5

    .line 1508
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   + interfaces : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 1503
    .end local v3    # "clz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_6a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_27

    .line 1511
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6f
    const-string v1, "-------- Class hierarchy dump finished ----------"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    return-void
.end method

.method public static blacklist dumpObjectFields(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 13
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p1, "objName"    # Ljava/lang/String;
    .param p2, "maxDepth"    # I

    .line 1360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    .local v1, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------- Field list dump start : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ----------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ReflectionUtils"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string v0, "-------- Field list dump finished ----------"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return-void
.end method

.method protected static blacklist dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 40
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p2, "fieldNamePrefix"    # Ljava/lang/String;
    .param p3, "fieldInfo"    # Ljava/lang/reflect/Field;
    .param p4, "fullPath"    # Ljava/lang/String;
    .param p5, "depth"    # I
    .param p6, "maxDepth"    # I
    .param p7, "classTypeFilter"    # Ljava/lang/String;
    .param p8, "valueFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1370
    .local p1, "dumpedObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    if-nez v1, :cond_d

    .line 1371
    return-void

    .line 1374
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1375
    .local v0, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1376
    .local v15, "objectTypeStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1378
    .local v2, "objectValueStr":Ljava/lang/String;
    invoke-static {v11, v1}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->findObjFromArrayList(Ljava/util/ArrayList;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    const/16 v16, 0x0

    const/4 v10, 0x1

    if-eq v3, v4, :cond_22

    move v3, v10

    goto :goto_24

    :cond_22
    move/from16 v3, v16

    :goto_24
    move/from16 v17, v3

    .line 1380
    .local v17, "alreadyDumpedObj":Z
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    const-string v4, "java.lang."

    if-eq v3, v10, :cond_51

    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v10, :cond_35

    goto :goto_51

    .line 1383
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_55

    .line 1381
    :cond_51
    :goto_51
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1385
    :goto_55
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    const-string v9, "]"

    if-ne v3, v10, :cond_7e

    .line 1386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " [arraySize = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v15}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getArraySize(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_7f

    .line 1385
    :cond_7e
    move-object v8, v2

    .line 1389
    .end local v2    # "objectValueStr":Ljava/lang/String;
    .local v8, "objectValueStr":Ljava/lang/String;
    :goto_7f
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getIndentString(I)Ljava/lang/String;

    move-result-object v7

    .line 1391
    .local v7, "indent":Ljava/lang/String;
    const-string v2, ""

    if-eqz p3, :cond_90

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_91

    :cond_90
    move-object v3, v2

    .line 1392
    .local v3, "fieldTypeStr":Ljava/lang/String;
    :goto_91
    const-string v5, "[L"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1394
    .end local v3    # "fieldTypeStr":Ljava/lang/String;
    .local v6, "fieldTypeStr":Ljava/lang/String;
    if-nez p2, :cond_9d

    .line 1395
    const-string v3, ""

    move-object v5, v3

    .end local p2    # "fieldNamePrefix":Ljava/lang/String;
    .local v3, "fieldNamePrefix":Ljava/lang/String;
    goto :goto_9f

    .line 1394
    .end local v3    # "fieldNamePrefix":Ljava/lang/String;
    .restart local p2    # "fieldNamePrefix":Ljava/lang/String;
    :cond_9d
    move-object/from16 v5, p2

    .line 1397
    .end local p2    # "fieldNamePrefix":Ljava/lang/String;
    .local v5, "fieldNamePrefix":Ljava/lang/String;
    :goto_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_b1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v10, v18

    goto :goto_b2

    :cond_b1
    move-object v10, v2

    :goto_b2
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1399
    .local v10, "fieldName":Ljava/lang/String;
    if-nez p4, :cond_bf

    .line 1400
    const-string v3, ""

    .end local p4    # "fullPath":Ljava/lang/String;
    .local v3, "fullPath":Ljava/lang/String;
    goto :goto_c1

    .line 1399
    .end local v3    # "fullPath":Ljava/lang/String;
    .restart local p4    # "fullPath":Ljava/lang/String;
    :cond_bf
    move-object/from16 v3, p4

    .line 1403
    .end local p4    # "fullPath":Ljava/lang/String;
    .restart local v3    # "fullPath":Ljava/lang/String;
    :goto_c1
    move-object/from16 p2, v5

    .end local v5    # "fieldNamePrefix":Ljava/lang/String;
    .restart local p2    # "fieldNamePrefix":Ljava/lang/String;
    const-string v5, "ReflectionUtils"

    if-eqz v13, :cond_d5

    move-object/from16 v19, v4

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v13, 0x1

    if-ne v4, v13, :cond_d1

    goto :goto_d8

    :cond_d1
    move-object/from16 v20, v9

    goto/16 :goto_15e

    :cond_d5
    move-object/from16 v19, v4

    const/4 v13, 0x1

    :goto_d8
    if-eqz v14, :cond_e5

    .line 1404
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v13, :cond_e1

    goto :goto_e5

    :cond_e1
    move-object/from16 v20, v9

    goto/16 :goto_15e

    .line 1406
    :cond_e5
    :goto_e5
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    const-string v13, ") : "

    const-string v14, " ("

    move-object/from16 v20, v9

    const-string v9, " = "

    const/4 v1, 0x1

    if-eq v4, v1, :cond_132

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v1, :cond_fb

    goto :goto_132

    .line 1409
    :cond_fb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    .line 1407
    :cond_132
    :goto_132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :goto_15e
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_177

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1415
    :cond_177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v15}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->extractClassNameFromFullClassPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1417
    .end local v3    # "fullPath":Ljava/lang/String;
    .local v1, "fullPath":Ljava/lang/String;
    if-nez v17, :cond_35a

    .line 1418
    add-int/lit8 v2, p5, 0x1

    if-ge v2, v12, :cond_1a8

    .line 1419
    move-object/from16 v13, p0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1aa

    .line 1418
    :cond_1a8
    move-object/from16 v13, p0

    .line 1425
    :goto_1aa
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_293

    .line 1426
    invoke-static {v13, v15}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getArraySize(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v14

    .line 1428
    .local v14, "arrayLength":I
    const/16 v16, 0x64

    .line 1429
    .local v16, "accessLimit":I
    const/4 v2, 0x0

    move v9, v2

    .local v9, "i":I
    :goto_1b9
    const/16 v2, 0x64

    if-ge v9, v14, :cond_257

    if-ge v9, v2, :cond_257

    .line 1430
    invoke-static {v13, v9}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getArrayValueObject(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v18

    .line 1432
    .local v18, "o":Ljava/lang/Object;
    if-eqz v18, :cond_233

    .line 1433
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1ee

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1dc

    goto :goto_1ee

    :cond_1dc
    move-object/from16 v23, p2

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v25, v7

    move-object/from16 v21, v8

    move/from16 v19, v9

    move-object/from16 v22, v10

    move-object/from16 v26, v20

    move-object/from16 v20, v6

    goto :goto_244

    .line 1434
    :cond_1ee
    :goto_1ee
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v4, v20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    add-int/lit8 v21, p5, 0x1

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move-object/from16 v22, v4

    move-object/from16 v4, v19

    move-object/from16 v23, p2

    move-object/from16 v24, v0

    move-object v0, v5

    .end local v0    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "fieldNamePrefix":Ljava/lang/String;
    .local v23, "fieldNamePrefix":Ljava/lang/String;
    .local v24, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v5, v20

    move-object/from16 v20, v6

    .end local v6    # "fieldTypeStr":Ljava/lang/String;
    .local v20, "fieldTypeStr":Ljava/lang/String;
    move-object v6, v1

    move-object/from16 v25, v7

    .end local v7    # "indent":Ljava/lang/String;
    .local v25, "indent":Ljava/lang/String;
    move/from16 v7, v21

    move-object/from16 v21, v8

    .end local v8    # "objectValueStr":Ljava/lang/String;
    .local v21, "objectValueStr":Ljava/lang/String;
    move/from16 v8, p6

    move/from16 v19, v9

    move-object/from16 v26, v22

    .end local v9    # "i":I
    .local v19, "i":I
    move-object/from16 v9, p7

    move-object/from16 v22, v10

    .end local v10    # "fieldName":Ljava/lang/String;
    .local v22, "fieldName":Ljava/lang/String;
    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_244

    .line 1432
    .end local v19    # "i":I
    .end local v20    # "fieldTypeStr":Ljava/lang/String;
    .end local v21    # "objectValueStr":Ljava/lang/String;
    .end local v22    # "fieldName":Ljava/lang/String;
    .end local v23    # "fieldNamePrefix":Ljava/lang/String;
    .end local v24    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v25    # "indent":Ljava/lang/String;
    .restart local v0    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "fieldTypeStr":Ljava/lang/String;
    .restart local v7    # "indent":Ljava/lang/String;
    .restart local v8    # "objectValueStr":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "fieldName":Ljava/lang/String;
    .restart local p2    # "fieldNamePrefix":Ljava/lang/String;
    :cond_233
    move-object/from16 v23, p2

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v25, v7

    move-object/from16 v21, v8

    move/from16 v19, v9

    move-object/from16 v22, v10

    move-object/from16 v26, v20

    move-object/from16 v20, v6

    .line 1429
    .end local v0    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fieldTypeStr":Ljava/lang/String;
    .end local v7    # "indent":Ljava/lang/String;
    .end local v8    # "objectValueStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "fieldName":Ljava/lang/String;
    .end local v18    # "o":Ljava/lang/Object;
    .end local p2    # "fieldNamePrefix":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v20    # "fieldTypeStr":Ljava/lang/String;
    .restart local v21    # "objectValueStr":Ljava/lang/String;
    .restart local v22    # "fieldName":Ljava/lang/String;
    .restart local v23    # "fieldNamePrefix":Ljava/lang/String;
    .restart local v24    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v25    # "indent":Ljava/lang/String;
    :goto_244
    add-int/lit8 v9, v19, 0x1

    move-object v5, v0

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move-object/from16 p2, v23

    move-object/from16 v0, v24

    move-object/from16 v7, v25

    move-object/from16 v20, v26

    .end local v19    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_1b9

    .end local v20    # "fieldTypeStr":Ljava/lang/String;
    .end local v21    # "objectValueStr":Ljava/lang/String;
    .end local v22    # "fieldName":Ljava/lang/String;
    .end local v23    # "fieldNamePrefix":Ljava/lang/String;
    .end local v24    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v25    # "indent":Ljava/lang/String;
    .restart local v0    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "fieldTypeStr":Ljava/lang/String;
    .restart local v7    # "indent":Ljava/lang/String;
    .restart local v8    # "objectValueStr":Ljava/lang/String;
    .restart local v10    # "fieldName":Ljava/lang/String;
    .restart local p2    # "fieldNamePrefix":Ljava/lang/String;
    :cond_257
    move-object/from16 v23, p2

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v25, v7

    move-object/from16 v21, v8

    move/from16 v19, v9

    move-object/from16 v22, v10

    move-object/from16 v26, v20

    move-object/from16 v20, v6

    .line 1438
    .end local v0    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fieldTypeStr":Ljava/lang/String;
    .end local v7    # "indent":Ljava/lang/String;
    .end local v8    # "objectValueStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "fieldName":Ljava/lang/String;
    .end local p2    # "fieldNamePrefix":Ljava/lang/String;
    .restart local v20    # "fieldTypeStr":Ljava/lang/String;
    .restart local v21    # "objectValueStr":Ljava/lang/String;
    .restart local v22    # "fieldName":Ljava/lang/String;
    .restart local v23    # "fieldNamePrefix":Ljava/lang/String;
    .restart local v24    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v25    # "indent":Ljava/lang/String;
    if-le v14, v2, :cond_28d

    .line 1439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v25

    .end local v25    # "indent":Ljava/lang/String;
    .local v10, "indent":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t[Dumped until index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28f

    .line 1438
    .end local v10    # "indent":Ljava/lang/String;
    .restart local v25    # "indent":Ljava/lang/String;
    :cond_28d
    move-object/from16 v10, v25

    .line 1442
    .end local v14    # "arrayLength":I
    .end local v16    # "accessLimit":I
    .end local v25    # "indent":Ljava/lang/String;
    .restart local v10    # "indent":Ljava/lang/String;
    :goto_28f
    move-object/from16 v27, v10

    goto/16 :goto_357

    .end local v20    # "fieldTypeStr":Ljava/lang/String;
    .end local v21    # "objectValueStr":Ljava/lang/String;
    .end local v22    # "fieldName":Ljava/lang/String;
    .end local v23    # "fieldNamePrefix":Ljava/lang/String;
    .end local v24    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "fieldTypeStr":Ljava/lang/String;
    .restart local v7    # "indent":Ljava/lang/String;
    .restart local v8    # "objectValueStr":Ljava/lang/String;
    .local v10, "fieldName":Ljava/lang/String;
    .restart local p2    # "fieldNamePrefix":Ljava/lang/String;
    :cond_293
    move-object/from16 v23, p2

    move-object/from16 v24, v0

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    move-object v10, v7

    .end local v0    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fieldTypeStr":Ljava/lang/String;
    .end local v7    # "indent":Ljava/lang/String;
    .end local v8    # "objectValueStr":Ljava/lang/String;
    .end local p2    # "fieldNamePrefix":Ljava/lang/String;
    .local v10, "indent":Ljava/lang/String;
    .restart local v20    # "fieldTypeStr":Ljava/lang/String;
    .restart local v21    # "objectValueStr":Ljava/lang/String;
    .restart local v22    # "fieldName":Ljava/lang/String;
    .restart local v23    # "fieldNamePrefix":Ljava/lang/String;
    .restart local v24    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v15}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->isPrimitiveDataType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_355

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_355

    .line 1443
    :goto_2ac
    if-eqz v24, :cond_350

    .line 1444
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v14

    .line 1446
    .local v14, "fields":[Ljava/lang/reflect/Field;
    array-length v9, v14

    move/from16 v8, v16

    :goto_2b5
    if-ge v8, v9, :cond_346

    aget-object v7, v14, v8

    .line 1447
    .local v7, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 1451
    .local v2, "fieldObject":Ljava/lang/Object;
    :try_start_2ba
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0
    :try_end_2be
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2ba .. :try_end_2be} :catch_2ce
    .catch Ljava/lang/IllegalAccessException; {:try_start_2ba .. :try_end_2be} :catch_2ce

    .line 1452
    .local v0, "accessable":Z
    const/4 v6, 0x1

    :try_start_2bf
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1453
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 1454
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2bf .. :try_end_2ca} :catch_2cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_2bf .. :try_end_2ca} :catch_2cc

    .line 1458
    .end local v0    # "accessable":Z
    move-object v0, v2

    goto :goto_2d5

    .line 1455
    :catch_2cc
    move-exception v0

    goto :goto_2d0

    :catch_2ce
    move-exception v0

    const/4 v6, 0x1

    .line 1456
    .local v0, "e":Ljava/lang/Exception;
    :goto_2d0
    const/4 v2, 0x0

    .line 1457
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 1460
    .end local v2    # "fieldObject":Ljava/lang/Object;
    .local v0, "fieldObject":Ljava/lang/Object;
    :goto_2d5
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2df

    move v2, v6

    goto :goto_2e1

    :cond_2df
    move/from16 v2, v16

    :goto_2e1
    move/from16 v18, v2

    .line 1461
    .local v18, "isFinalField":Z
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2ed

    move v2, v6

    goto :goto_2ef

    :cond_2ed
    move/from16 v2, v16

    :goto_2ef
    move/from16 v19, v2

    .line 1462
    .local v19, "isStaticField":Z
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v25

    .line 1464
    .local v25, "isEnumField":Z
    if-nez v25, :cond_334

    if-eqz v19, :cond_305

    if-nez v18, :cond_2fc

    goto :goto_305

    :cond_2fc
    move/from16 v30, v6

    move/from16 v26, v8

    move/from16 v29, v9

    move-object/from16 v27, v10

    goto :goto_33e

    .line 1467
    :cond_305
    :goto_305
    add-int/lit8 v2, p5, 0x1

    if-ge v2, v12, :cond_329

    .line 1468
    const/4 v4, 0x0

    add-int/lit8 v26, p5, 0x1

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v5, v7

    move/from16 v27, v6

    move-object v6, v1

    move-object/from16 v28, v7

    .end local v7    # "field":Ljava/lang/reflect/Field;
    .local v28, "field":Ljava/lang/reflect/Field;
    move/from16 v7, v26

    move/from16 v26, v8

    move/from16 v8, p6

    move/from16 v29, v9

    move-object/from16 v9, p7

    move/from16 v30, v27

    move-object/from16 v27, v10

    .end local v10    # "indent":Ljava/lang/String;
    .local v27, "indent":Ljava/lang/String;
    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_33e

    .line 1467
    .end local v27    # "indent":Ljava/lang/String;
    .end local v28    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "indent":Ljava/lang/String;
    :cond_329
    move/from16 v30, v6

    move-object/from16 v28, v7

    move/from16 v26, v8

    move/from16 v29, v9

    move-object/from16 v27, v10

    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "indent":Ljava/lang/String;
    .restart local v27    # "indent":Ljava/lang/String;
    .restart local v28    # "field":Ljava/lang/reflect/Field;
    goto :goto_33e

    .line 1464
    .end local v27    # "indent":Ljava/lang/String;
    .end local v28    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "indent":Ljava/lang/String;
    :cond_334
    move/from16 v30, v6

    move-object/from16 v28, v7

    move/from16 v26, v8

    move/from16 v29, v9

    move-object/from16 v27, v10

    .line 1446
    .end local v0    # "fieldObject":Ljava/lang/Object;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "indent":Ljava/lang/String;
    .end local v18    # "isFinalField":Z
    .end local v19    # "isStaticField":Z
    .end local v25    # "isEnumField":Z
    .restart local v27    # "indent":Ljava/lang/String;
    :goto_33e
    add-int/lit8 v8, v26, 0x1

    move-object/from16 v10, v27

    move/from16 v9, v29

    goto/16 :goto_2b5

    .line 1473
    .end local v27    # "indent":Ljava/lang/String;
    .restart local v10    # "indent":Ljava/lang/String;
    :cond_346
    move-object/from16 v27, v10

    const/16 v30, 0x1

    .end local v10    # "indent":Ljava/lang/String;
    .restart local v27    # "indent":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v24

    .line 1474
    .end local v14    # "fields":[Ljava/lang/reflect/Field;
    goto/16 :goto_2ac

    .line 1443
    .end local v27    # "indent":Ljava/lang/String;
    .restart local v10    # "indent":Ljava/lang/String;
    :cond_350
    move-object/from16 v27, v10

    .end local v10    # "indent":Ljava/lang/String;
    .restart local v27    # "indent":Ljava/lang/String;
    move-object/from16 v0, v24

    goto :goto_359

    .line 1442
    .end local v27    # "indent":Ljava/lang/String;
    .restart local v10    # "indent":Ljava/lang/String;
    :cond_355
    move-object/from16 v27, v10

    .line 1476
    .end local v10    # "indent":Ljava/lang/String;
    .restart local v27    # "indent":Ljava/lang/String;
    :goto_357
    move-object/from16 v0, v24

    .end local v24    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_359
    return-void

    .line 1421
    .end local v20    # "fieldTypeStr":Ljava/lang/String;
    .end local v21    # "objectValueStr":Ljava/lang/String;
    .end local v22    # "fieldName":Ljava/lang/String;
    .end local v23    # "fieldNamePrefix":Ljava/lang/String;
    .end local v27    # "indent":Ljava/lang/String;
    .restart local v6    # "fieldTypeStr":Ljava/lang/String;
    .local v7, "indent":Ljava/lang/String;
    .restart local v8    # "objectValueStr":Ljava/lang/String;
    .local v10, "fieldName":Ljava/lang/String;
    .restart local p2    # "fieldNamePrefix":Ljava/lang/String;
    :cond_35a
    return-void
.end method

.method public static blacklist dumpObjectFieldsWithClassTypeFilter(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p1, "objName"    # Ljava/lang/String;
    .param p2, "maxDepth"    # I
    .param p3, "classTypeFilter"    # Ljava/lang/String;

    .line 1340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1342
    .local v1, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------- Field list dump start : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / Object type filter : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ----------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ReflectionUtils"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1344
    const-string v0, "-------- Field list dump finished ----------"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-void
.end method

.method public static blacklist dumpObjectFieldsWithValueFilter(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p1, "objName"    # Ljava/lang/String;
    .param p2, "maxDepth"    # I
    .param p3, "valueFilter"    # Ljava/lang/String;

    .line 1350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1352
    .local v1, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------- Field list dump start : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / Value filter : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ----------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ReflectionUtils"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1354
    const-string v0, "-------- Field list dump finished ----------"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    return-void
.end method

.method public static blacklist dumpObjectMethods(Ljava/lang/Object;)V
    .registers 8
    .param p0, "objToDump"    # Ljava/lang/Object;

    .line 1480
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1482
    .local v0, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------- Method list dump start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectionUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :goto_26
    if-eqz v0, :cond_61

    .line 1485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -- Methods of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " class --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1488
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_4e
    if-ge v4, v3, :cond_5c

    aget-object v5, v1, v4

    .line 1489
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v6

    .line 1490
    .local v6, "curMethodName":Ljava/lang/String;
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "curMethodName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 1492
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1493
    .end local v1    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_26

    .line 1495
    :cond_61
    const-string v1, "-------- Method list dump finished ----------"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    return-void
.end method

.method protected static blacklist extractClassNameFromFullClassPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "classPath"    # Ljava/lang/String;

    .line 1332
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1333
    .local v0, "strs":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_c

    .line 1334
    const-string v1, ""

    return-object v1

    .line 1336
    :cond_c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method protected static blacklist findObjFromArrayList(Ljava/util/ArrayList;Ljava/lang/Object;)I
    .registers 5
    .param p1, "objToFind"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1315
    .local p0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1316
    .local v0, "arraySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1317
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_e

    .line 1318
    return v1

    .line 1316
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1321
    .end local v1    # "i":I
    :cond_11
    const/4 v1, -0x1

    return v1
.end method

.method protected static blacklist getArraySize(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "objectTypeStr"    # Ljava/lang/String;

    .line 1248
    const/4 v0, 0x0

    .line 1250
    .local v0, "arrayLength":I
    const-string v1, "[I"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1251
    move-object v1, p0

    check-cast v1, [I

    array-length v0, v1

    goto/16 :goto_78

    .line 1252
    :cond_f
    const-string v1, "[Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1253
    move-object v1, p0

    check-cast v1, [Z

    array-length v0, v1

    goto :goto_78

    .line 1254
    :cond_1c
    const-string v1, "[J"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1255
    move-object v1, p0

    check-cast v1, [J

    array-length v0, v1

    goto :goto_78

    .line 1256
    :cond_29
    const-string v1, "[B"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1257
    move-object v1, p0

    check-cast v1, [B

    array-length v0, v1

    goto :goto_78

    .line 1258
    :cond_36
    const-string v1, "[F"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1259
    move-object v1, p0

    check-cast v1, [F

    array-length v0, v1

    goto :goto_78

    .line 1260
    :cond_43
    const-string v1, "[C"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1261
    move-object v1, p0

    check-cast v1, [C

    array-length v0, v1

    goto :goto_78

    .line 1262
    :cond_50
    const-string v1, "[S"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1263
    move-object v1, p0

    check-cast v1, [S

    array-length v0, v1

    goto :goto_78

    .line 1264
    :cond_5d
    const-string v1, "[D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1265
    move-object v1, p0

    check-cast v1, [D

    array-length v0, v1

    goto :goto_78

    .line 1266
    :cond_6a
    const-string v1, "[L"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1267
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    array-length v0, v1

    goto :goto_78

    .line 1269
    :cond_77
    const/4 v0, 0x0

    .line 1271
    :goto_78
    return v0
.end method

.method protected static blacklist getArrayValueObject(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .line 1276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1277
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1279
    .local v1, "dataTypeStr":Ljava/lang/String;
    const-string v2, "[I"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1280
    move-object v2, p0

    check-cast v2, [I

    aget v2, v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 1281
    :cond_1a
    const-string v2, "[Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1282
    move-object v2, p0

    check-cast v2, [Z

    aget-boolean v2, v2, p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 1283
    :cond_2c
    const-string v2, "[J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1284
    move-object v2, p0

    check-cast v2, [J

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 1285
    :cond_3e
    const-string v2, "[B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1286
    move-object v2, p0

    check-cast v2, [B

    aget-byte v2, v2, p1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    return-object v2

    .line 1287
    :cond_50
    const-string v2, "[F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1288
    move-object v2, p0

    check-cast v2, [F

    aget v2, v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 1289
    :cond_62
    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1290
    move-object v2, p0

    check-cast v2, [C

    aget-char v2, v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 1291
    :cond_74
    const-string v2, "[S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 1292
    move-object v2, p0

    check-cast v2, [S

    aget-short v2, v2, p1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    return-object v2

    .line 1293
    :cond_86
    const-string v2, "[D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 1294
    move-object v2, p0

    check-cast v2, [D

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 1295
    :cond_98
    const-string v2, "[L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 1296
    move-object v2, p0

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, p1

    return-object v2

    .line 1298
    :cond_a6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getFieldObjectByFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1611
    const/4 v0, 0x0

    if-eqz p0, :cond_56

    if-nez p1, :cond_6

    goto :goto_56

    .line 1615
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1616
    .local v1, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a
    if-eqz v1, :cond_55

    .line 1617
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1619
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_50

    aget-object v5, v2, v4

    .line 1620
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1621
    .local v6, "curFieldName":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4d

    .line 1624
    :try_start_21
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v7

    .line 1625
    .local v7, "accessable":Z
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1626
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1627
    .local v8, "fieldObject":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2f} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_2f} :catch_30

    .line 1629
    return-object v8

    .line 1630
    .end local v7    # "accessable":Z
    .end local v8    # "fieldObject":Ljava/lang/Object;
    :catch_30
    move-exception v7

    .line 1631
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occurred in getFieldObjectByFieldName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ReflectionUtils"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "curFieldName":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1635
    :cond_50
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1636
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_a

    .line 1637
    :cond_55
    return-object v0

    .line 1612
    .end local v1    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_56
    :goto_56
    return-object v0
.end method

.method protected static blacklist getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V
    .registers 33
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "matchType"    # I
    .param p2, "fieldObjectType"    # Ljava/lang/String;
    .param p3, "maxSearchResultCount"    # I
    .param p5, "curDepth"    # I
    .param p6, "maxDepth"    # I
    .param p7, "skipWellKnownClass"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;IIZ)V"
        }
    .end annotation

    .line 1515
    .local p4, "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p5

    if-eqz v1, :cond_14a

    if-eqz v10, :cond_14a

    move/from16 v13, p6

    if-ne v12, v13, :cond_14

    move-object/from16 v15, p4

    goto/16 :goto_14e

    .line 1519
    :cond_14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v14, v0

    .line 1521
    .local v14, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_19
    if-eqz v14, :cond_147

    .line 1522
    const/4 v15, 0x1

    move/from16 v9, p7

    if-ne v9, v15, :cond_3e

    .line 1523
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1524
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_3e

    .line 1525
    const-string v2, "android.view."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v15, :cond_3a

    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v15, :cond_3e

    .line 1526
    move-object/from16 v15, p4

    goto/16 :goto_149

    .line 1525
    :cond_3a
    move-object/from16 v15, p4

    goto/16 :goto_149

    .line 1531
    .end local v0    # "className":Ljava/lang/String;
    :cond_3e
    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 1533
    .local v8, "fields":[Ljava/lang/reflect/Field;
    array-length v7, v8

    const/4 v0, 0x0

    move v6, v0

    :goto_45
    if-ge v6, v7, :cond_13d

    aget-object v5, v8, v6

    .line 1534
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    .line 1535
    .local v16, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1539
    .local v4, "fieldType":Ljava/lang/String;
    :try_start_51
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 1540
    .local v0, "accessable":Z
    invoke-virtual {v5, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1541
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .line 1542
    .local v3, "memberObj":Ljava/lang/Object;
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1544
    if-eqz v3, :cond_f8

    .line 1545
    const/4 v2, 0x0

    .line 1547
    .local v2, "matched":Z
    packed-switch p1, :pswitch_data_150

    .line 1554
    move/from16 v18, v0

    .end local v0    # "accessable":Z
    .local v18, "accessable":Z
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_6c} :catch_109
    .catch Ljava/lang/IllegalAccessException; {:try_start_51 .. :try_end_6c} :catch_109

    goto :goto_96

    .line 1549
    .end local v18    # "accessable":Z
    .restart local v0    # "accessable":Z
    :pswitch_6d
    :try_start_6d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    .end local v0    # "accessable":Z
    .restart local v18    # "accessable":Z
    const-string v0, "."

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1550
    .end local v2    # "matched":Z
    .local v0, "matched":Z
    goto :goto_96

    .line 1582
    .end local v0    # "matched":Z
    .end local v3    # "memberObj":Ljava/lang/Object;
    .end local v18    # "accessable":Z
    :catch_87
    move-exception v0

    move-object/from16 v15, p4

    :goto_8a
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move-object/from16 v17, v8

    goto/16 :goto_116

    .line 1558
    .restart local v0    # "matched":Z
    .restart local v3    # "memberObj":Ljava/lang/Object;
    .restart local v18    # "accessable":Z
    :goto_96
    const/4 v15, 0x1

    if-ne v0, v15, :cond_cb

    .line 1559
    const/4 v2, 0x0

    .line 1562
    .local v2, "haveSameObject":Z
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_9e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19
    :try_end_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_a8} :catch_87
    .catch Ljava/lang/IllegalAccessException; {:try_start_6d .. :try_end_a8} :catch_87

    move-object/from16 v20, v19

    .line 1563
    .local v20, "o":Ljava/lang/Object;
    move-object/from16 v15, v20

    .end local v20    # "o":Ljava/lang/Object;
    .local v15, "o":Ljava/lang/Object;
    if-ne v15, v3, :cond_b0

    .line 1564
    const/4 v2, 0x1

    .line 1565
    goto :goto_b2

    .line 1567
    .end local v15    # "o":Ljava/lang/Object;
    :cond_b0
    const/4 v15, 0x1

    goto :goto_9e

    .line 1569
    :cond_b2
    :goto_b2
    if-nez v2, :cond_bc

    .line 1571
    move-object/from16 v15, p4

    :try_start_b6
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b6 .. :try_end_b9} :catch_ba
    .catch Ljava/lang/IllegalAccessException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_be

    .line 1582
    .end local v0    # "matched":Z
    .end local v2    # "haveSameObject":Z
    .end local v3    # "memberObj":Ljava/lang/Object;
    .end local v18    # "accessable":Z
    :catch_ba
    move-exception v0

    goto :goto_8a

    .line 1569
    .restart local v0    # "matched":Z
    .restart local v2    # "haveSameObject":Z
    .restart local v3    # "memberObj":Ljava/lang/Object;
    .restart local v18    # "accessable":Z
    :cond_bc
    move-object/from16 v15, p4

    .line 1573
    .end local v2    # "haveSameObject":Z
    :goto_be
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move-object/from16 v17, v8

    goto :goto_ed

    .line 1574
    :cond_cb
    move-object/from16 v15, p4

    add-int/lit8 v17, v12, 0x1

    move-object v2, v3

    move-object/from16 v20, v3

    .end local v3    # "memberObj":Ljava/lang/Object;
    .local v20, "memberObj":Ljava/lang/Object;
    move/from16 v3, p1

    move-object/from16 v21, v4

    .end local v4    # "fieldType":Ljava/lang/String;
    .local v21, "fieldType":Ljava/lang/String;
    move-object/from16 v4, p2

    move-object/from16 v22, v5

    .end local v5    # "field":Ljava/lang/reflect/Field;
    .local v22, "field":Ljava/lang/reflect/Field;
    move/from16 v5, p3

    move/from16 v23, v6

    move-object/from16 v6, p4

    move/from16 v24, v7

    move/from16 v7, v17

    move-object/from16 v17, v8

    .end local v8    # "fields":[Ljava/lang/reflect/Field;
    .local v17, "fields":[Ljava/lang/reflect/Field;
    move/from16 v8, p6

    move/from16 v9, p7

    :try_start_ea
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V

    .line 1577
    :goto_ed
    if-lez v11, :cond_108

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_f3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ea .. :try_end_f3} :catch_f6
    .catch Ljava/lang/IllegalAccessException; {:try_start_ea .. :try_end_f3} :catch_f6

    if-lt v2, v11, :cond_108

    .line 1579
    return-void

    .line 1582
    .end local v0    # "matched":Z
    .end local v18    # "accessable":Z
    .end local v20    # "memberObj":Ljava/lang/Object;
    :catch_f6
    move-exception v0

    goto :goto_116

    .line 1544
    .end local v17    # "fields":[Ljava/lang/reflect/Field;
    .end local v21    # "fieldType":Ljava/lang/String;
    .end local v22    # "field":Ljava/lang/reflect/Field;
    .local v0, "accessable":Z
    .restart local v3    # "memberObj":Ljava/lang/Object;
    .restart local v4    # "fieldType":Ljava/lang/String;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "fields":[Ljava/lang/reflect/Field;
    :cond_f8
    move-object/from16 v15, p4

    move/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move-object/from16 v17, v8

    .line 1584
    .end local v0    # "accessable":Z
    .end local v3    # "memberObj":Ljava/lang/Object;
    .end local v4    # "fieldType":Ljava/lang/String;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fields":[Ljava/lang/reflect/Field;
    .restart local v17    # "fields":[Ljava/lang/reflect/Field;
    .restart local v21    # "fieldType":Ljava/lang/String;
    .restart local v22    # "field":Ljava/lang/reflect/Field;
    :cond_108
    goto :goto_132

    .line 1582
    .end local v17    # "fields":[Ljava/lang/reflect/Field;
    .end local v21    # "fieldType":Ljava/lang/String;
    .end local v22    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "fieldType":Ljava/lang/String;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "fields":[Ljava/lang/reflect/Field;
    :catch_109
    move-exception v0

    move-object/from16 v15, p4

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move-object/from16 v17, v8

    .line 1583
    .end local v4    # "fieldType":Ljava/lang/String;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fields":[Ljava/lang/reflect/Field;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "fields":[Ljava/lang/reflect/Field;
    .restart local v21    # "fieldType":Ljava/lang/String;
    .restart local v22    # "field":Ljava/lang/reflect/Field;
    :goto_116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in getFieldObjectByObjectType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReflectionUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "fieldType":Ljava/lang/String;
    .end local v22    # "field":Ljava/lang/reflect/Field;
    :goto_132
    add-int/lit8 v6, v23, 0x1

    move/from16 v9, p7

    move-object/from16 v8, v17

    move/from16 v7, v24

    const/4 v15, 0x1

    goto/16 :goto_45

    .line 1587
    .end local v17    # "fields":[Ljava/lang/reflect/Field;
    .restart local v8    # "fields":[Ljava/lang/reflect/Field;
    :cond_13d
    move-object/from16 v15, p4

    move-object/from16 v17, v8

    .end local v8    # "fields":[Ljava/lang/reflect/Field;
    .restart local v17    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    .line 1588
    .end local v17    # "fields":[Ljava/lang/reflect/Field;
    goto/16 :goto_19

    .line 1521
    :cond_147
    move-object/from16 v15, p4

    .line 1590
    :goto_149
    return-void

    .line 1515
    .end local v14    # "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_14a
    move-object/from16 v15, p4

    move/from16 v13, p6

    .line 1516
    :goto_14e
    return-void

    nop

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_6d
    .end packed-switch
.end method

.method public static blacklist getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;
    .registers 14
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "matchType"    # I
    .param p2, "fieldObjectType"    # Ljava/lang/String;
    .param p3, "maxSearchResultCount"    # I
    .param p4, "maxDepth"    # I
    .param p5, "skipWellKnownClass"    # Z

    .line 1598
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1600
    .local v4, "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_19

    if-nez p2, :cond_a

    goto :goto_19

    .line 1604
    :cond_a
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V

    .line 1606
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1601
    :cond_19
    :goto_19
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IZ)[Ljava/lang/Object;
    .registers 11
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "matchType"    # I
    .param p2, "fieldObjectType"    # Ljava/lang/String;
    .param p3, "maxSearchResultCount"    # I
    .param p4, "skipWellKnownClass"    # Z

    .line 1594
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist getIndentString(I)Ljava/lang/String;
    .registers 4
    .param p0, "depth"    # I

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1326
    .local v0, "indent":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, p0, :cond_10

    .line 1327
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1328
    .end local v1    # "i":I
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist isPrimitiveDataType(Ljava/lang/String;)Z
    .registers 3
    .param p0, "dataType"    # Ljava/lang/String;

    .line 1303
    const-string/jumbo v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    .line 1304
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_45

    .line 1305
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_45

    .line 1306
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_45

    .line 1307
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_45

    .line 1308
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_45

    .line 1309
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_45

    .line 1310
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_43

    goto :goto_45

    :cond_43
    const/4 v1, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    nop

    .line 1303
    :goto_46
    return v1
.end method
