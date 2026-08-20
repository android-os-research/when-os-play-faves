.class public Ld/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static b:Z = false

.field private static c:Z = false

.field private static final d:Z = false

.field private static e:Lc/h;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc/h;Ljava/io/InputStream;)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    sput-boolean v1, Ld/c;->c:Z

    if-nez v0, :cond_8

    return v1

    :cond_8
    sget-object v2, Ld/c;->a:Ljava/lang/String;

    const-string v3, "parseParamInfo() - start"

    invoke-static {v2, v3}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Ld/c;->e:Lc/h;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_26

    sget-boolean v0, Ld/c;->c:Z

    return v0

    :cond_26
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hwparam_document"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_348

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move v3, v1

    :goto_3b
    const/4 v4, 0x1

    if-ge v3, v2, :cond_33d

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v4, :cond_4a

    goto/16 :goto_32e

    :cond_4a
    sget v5, Lc/b;->N:I

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "hwparam_info"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32e

    const-string v7, "compID"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "compVer"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "compManufacture"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "hitType"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v7, "feature"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "ph"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, " |"

    const-string v14, " "

    const-string v15, " | "

    if-eqz v7, :cond_fe

    const-string v5, "uevent_path"

    invoke-interface {v6, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v7, Lc/b;->O:I

    sget-object v1, Ld/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz v5, :cond_cc

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v0

    goto :goto_fb

    :cond_cc
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v0

    const-string v0, " | ??? |"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_fb
    move-object v0, v5

    move v5, v7

    goto :goto_102

    :cond_fe
    move-object/from16 p1, v0

    const-string v0, ""

    :goto_102
    sget-object v1, Ld/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    move/from16 v16, v2

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v17, v3

    const/4 v3, 0x0

    :goto_14d
    if-ge v3, v2, :cond_2d1

    invoke-interface {v14, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    move/from16 v19, v2

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    move-object/from16 v18, v0

    const/4 v0, 0x1

    if-eq v2, v0, :cond_16c

    move/from16 v24, v5

    move-object/from16 v25, v10

    move-object/from16 v23, v11

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    move-object/from16 v20, v14

    goto/16 :goto_2bd

    :cond_16c
    invoke-interface {v14, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v14

    const-string v14, "sysfs_node"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19c

    invoke-static {v0}, Ld/c;->e(Lorg/w3c/dom/Element;)La/p;

    move-result-object v2

    if-eqz v2, :cond_190

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lc/k;->t:Z

    if-eqz v2, :cond_190

    invoke-static {v0, v6}, Ld/c;->d(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    :cond_190
    move/from16 v24, v5

    move-object/from16 v25, v10

    move-object/from16 v23, v11

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    goto/16 :goto_2bd

    :cond_19c
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v13

    const-string v13, "enc_sysfs_node"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ca

    sget v2, Lc/k;->F:I

    sget v13, Lc/b;->F:I

    if-eq v2, v13, :cond_1c0

    sget v2, Lc/k;->F:I

    sget v13, Lc/b;->H:I

    if-ne v2, v13, :cond_1b7

    goto :goto_1c0

    :cond_1b7
    invoke-static {v0}, Ld/c;->e(Lorg/w3c/dom/Element;)La/p;

    move-result-object v0

    if-eqz v0, :cond_1c0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c0
    :goto_1c0
    move/from16 v24, v5

    move-object/from16 v25, v10

    move-object/from16 v23, v11

    move-object/from16 v22, v12

    goto/16 :goto_2bd

    :cond_1ca
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v13, "dev_sysfs_node"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ed

    sget v2, Lc/k;->F:I

    sget v13, Lc/b;->F:I

    if-eq v2, v13, :cond_1c0

    sget v2, Lc/k;->F:I

    sget v13, Lc/b;->H:I

    if-ne v2, v13, :cond_1e3

    goto :goto_1c0

    :cond_1e3
    invoke-static {v0}, Ld/c;->e(Lorg/w3c/dom/Element;)La/p;

    move-result-object v0

    if-eqz v0, :cond_1c0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c0

    :cond_1ed
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v13, "condition_info"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_249

    const-string v2, "path"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v13, "value"

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20c

    goto :goto_1c0

    :cond_20c
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v13, 0x0

    :goto_215
    if-ge v13, v2, :cond_245

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move/from16 v23, v2

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    move-object/from16 v22, v12

    const/4 v12, 0x1

    if-eq v2, v12, :cond_227

    goto :goto_23e

    :cond_227
    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23e

    invoke-static {v2}, Ld/c;->e(Lorg/w3c/dom/Element;)La/p;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23e
    :goto_23e
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v12, v22

    move/from16 v2, v23

    goto :goto_215

    :cond_245
    move-object/from16 v22, v12

    goto/16 :goto_2b7

    :cond_249
    move-object/from16 v22, v12

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v12, "data_info"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b7

    sget v2, Lc/k;->F:I

    sget v12, Lc/b;->G:I

    if-ne v2, v12, :cond_25e

    goto :goto_2b7

    :cond_25e
    const-string v2, "interface"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v12, "type1"

    invoke-interface {v0, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "type2"

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "type3"

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v2, :cond_2b7

    if-eqz v12, :cond_2b7

    if-eqz v13, :cond_2b7

    if-eqz v14, :cond_2b7

    move-object/from16 v23, v11

    sget-object v11, Ld/c;->a:Ljava/lang/String;

    move/from16 v24, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v10

    const-string v10, " (d) | "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lc/k;->t:Z

    if-eqz v2, :cond_2bd

    invoke-static {v0, v6}, Ld/c;->d(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    goto :goto_2bd

    :cond_2b7
    :goto_2b7
    move/from16 v24, v5

    move-object/from16 v25, v10

    move-object/from16 v23, v11

    :cond_2bd
    :goto_2bd
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v18

    move/from16 v2, v19

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move/from16 v5, v24

    move-object/from16 v10, v25

    goto/16 :goto_14d

    :cond_2d1
    move-object/from16 v18, v0

    move/from16 v24, v5

    move-object/from16 v25, v10

    move-object/from16 v23, v11

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-eqz v9, :cond_334

    if-eqz v25, :cond_334

    if-lez v0, :cond_334

    sget-object v0, Lc/k;->f0:Ljava/util/ArrayList;

    move-object/from16 v2, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lc/b;->N:I

    move/from16 v5, v24

    if-ne v5, v0, :cond_314

    new-instance v0, Lc/c;

    move-object v8, v0

    move-object v10, v2

    move-object/from16 v11, v23

    move-object/from16 v12, v22

    move-object/from16 v13, v21

    invoke-direct/range {v8 .. v13}, Lc/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v7}, Lc/a;->j(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_30e
    sget-object v1, Ld/c;->e:Lc/h;

    invoke-virtual {v1, v5, v0}, Lc/h;->g(ILc/a;)V

    goto :goto_334

    :cond_314
    sget v0, Lc/b;->O:I

    if-ne v5, v0, :cond_334

    new-instance v0, Lc/d;

    move-object v8, v0

    move-object v10, v2

    move-object/from16 v11, v23

    move-object/from16 v12, v22

    move-object/from16 v13, v21

    invoke-direct/range {v8 .. v13}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v7}, Lc/a;->j(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc/d;->r(Ljava/lang/String;)V

    goto :goto_30e

    :cond_32e
    :goto_32e
    move-object/from16 p1, v0

    move/from16 v16, v2

    move/from16 v17, v3

    :cond_334
    :goto_334
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    const/4 v1, 0x0

    goto/16 :goto_3b

    :cond_33d
    sget-boolean v0, La/g;->i:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_345

    invoke-static {}, La/s;->q()V

    :cond_345
    sput-boolean v1, Ld/c;->c:Z

    return v1

    :cond_348
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Node name of the root element is wrong."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lc/h;Ljava/io/InputStream;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Ld/c;->b:Z

    if-nez p1, :cond_6

    return v0

    :cond_6
    sget-object v1, Ld/c;->a:Ljava/lang/String;

    const-string v2, "parseSettingInfo() - start"

    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Ld/c;->e:Lc/h;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_24

    sget-boolean p0, Ld/c;->b:Z

    return p0

    :cond_24
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "hwparam_document"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_121

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    move v1, v0

    :goto_39
    const/4 v2, 0x1

    if-ge v1, p1, :cond_11e

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v2, :cond_48

    goto/16 :goto_11a

    :cond_48
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hwparam_setting"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11a

    const-string p0, "enable"

    invoke-interface {v3, p0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DVServer"

    invoke-interface {v3, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DQServer"

    invoke-interface {v3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "CFServer"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "condition"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "LogBackup"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "analyzer"

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "dhr"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_94

    const-string v5, "none"

    :cond_94
    sget-object v8, Ld/c;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hwparam_setting : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "true"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c9

    sput-boolean v2, Lc/k;->p:Z

    goto :goto_cb

    :cond_c9
    sput-boolean v0, Lc/k;->p:Z

    :goto_cb
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d4

    sput-boolean v2, Lc/k;->q:Z

    goto :goto_d6

    :cond_d4
    sput-boolean v0, Lc/k;->q:Z

    :goto_d6
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_df

    sput-boolean v2, Lc/k;->r:Z

    goto :goto_e1

    :cond_df
    sput-boolean v0, Lc/k;->r:Z

    :goto_e1
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ea

    sput-boolean v2, Lc/k;->s:Z

    goto :goto_ec

    :cond_ea
    sput-boolean v0, Lc/k;->s:Z

    :goto_ec
    const-string p0, "frst"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f9

    sput-boolean v2, Lc/k;->u:Z

    sput-boolean v0, Lc/k;->p:Z

    goto :goto_fb

    :cond_f9
    sput-boolean v0, Lc/k;->u:Z

    :goto_fb
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_104

    sput-boolean v2, Lc/k;->v:Z

    goto :goto_106

    :cond_104
    sput-boolean v0, Lc/k;->v:Z

    :goto_106
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10f

    sput-boolean v2, Lc/k;->t:Z

    goto :goto_111

    :cond_10f
    sput-boolean v0, Lc/k;->t:Z

    :goto_111
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_11e

    sput-object v7, Lc/k;->D:Ljava/lang/String;

    goto :goto_11e

    :cond_11a
    :goto_11a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_39

    :cond_11e
    :goto_11e
    sput-boolean v2, Ld/c;->b:Z

    return v2

    :cond_121
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Node name of the root element is wrong."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c()Z
    .registers 1

    sget-boolean v0, Ld/c;->b:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Ld/c;->c:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static d(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .registers 25

    move-object/from16 v0, p1

    const-string v1, "compID"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "feature"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "order_compID"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "order_feature"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v2

    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    if-eqz v14, :cond_eb

    const/4 v2, 0x0

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    const/4 v12, 0x1

    move v11, v2

    move/from16 v16, v12

    :goto_36
    if-ge v11, v13, :cond_eb

    invoke-interface {v14, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-eq v2, v12, :cond_44

    goto/16 :goto_d1

    :cond_44
    invoke-interface {v14, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_info"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    const-string v3, "keyname"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "min"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "max"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "desc1"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v3, "desc2"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v3, "desc3"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v3, "desc4"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v3, "type1"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type2"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, La/n;

    invoke-direct {v7}, La/n;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int v21, v0, v16

    move-object v2, v7

    move-object v5, v1

    move-object v6, v15

    move/from16 p1, v0

    move-object v0, v7

    move-object v7, v10

    move-object/from16 v22, v1

    move-object v1, v10

    move-object/from16 v10, v17

    move/from16 v17, v11

    move-object/from16 v11, v18

    move/from16 v18, v12

    move-object/from16 v12, v19

    move/from16 v19, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v14

    move/from16 v14, v21

    invoke-virtual/range {v2 .. v14}, La/n;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc/k;->h0:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v16, v16, 0x1

    goto :goto_dd

    :cond_d1
    :goto_d1
    move/from16 p1, v0

    move-object/from16 v22, v1

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    :goto_dd
    add-int/lit8 v11, v17, 0x1

    move/from16 v0, p1

    move/from16 v12, v18

    move/from16 v13, v19

    move-object/from16 v14, v20

    move-object/from16 v1, v22

    goto/16 :goto_36

    :cond_eb
    return-void
.end method

.method private static e(Lorg/w3c/dom/Element;)La/p;
    .registers 8

    const-string v0, "type"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "key"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "value"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "clear"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "proc"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_66

    if-eqz v3, :cond_66

    if-eqz v4, :cond_66

    if-eqz v0, :cond_66

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget-object p0, Ld/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (B) | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, La/p;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, La/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_66
    const/4 p0, 0x0

    return-object p0
.end method
