.class public Lcom/android/server/om/ResourceMapParser;
.super Ljava/lang/Object;
.source "ResourceMapParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/ResourceMapParser$ResourceType;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_PARSING:Z

.field public static final RESOURCE_MAP:Ljava/lang/String; = "resource-map"

.field public static final RESOURCE_MAP_EXTENSION:Ljava/lang/String; = ".map"

.field public static final RESOURCE_MAP_PATH:Ljava/lang/String; = "/data/overlays/remaps/"

.field public static final RESOURCE_MAP_XML_FILE_NAME:Ljava/lang/String; = "resource_map"

.field public static final RIGID_PARSER:Z = false

.field public static final TAG:Ljava/lang/String; = "ResourceMapParser"

.field public static final TAG_COLOR:Ljava/lang/String; = "color"

.field public static final TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final TAG_MATCH:Ljava/lang/String; = "match"

.field public static final TAG_ORIGINAL:Ljava/lang/String; = "original"

.field public static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field public static final TAG_RESOURCE_MAP:Ljava/lang/String; = "resource-map"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 131
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    const/4 v0, 0x0

    .line 132
    sput-boolean v0, Lcom/android/server/om/ResourceMapParser;->DEBUG_PARSING:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseEntry(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/ArrayList;Lcom/android/server/om/ResourceMapParser$ResourceType;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/om/ResourceMapParser$ResourceType;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 300
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 301
    :cond_9
    :goto_9
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_11f

    const/4 v6, 0x3

    if-ne v4, v6, :cond_19

    .line 303
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_11f

    :cond_19
    if-eq v4, v6, :cond_9

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1f

    goto :goto_9

    .line 307
    :cond_1f
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 308
    sget-boolean v8, Lcom/android/server/om/ResourceMapParser;->DEBUG_PARSING:Z

    const-string v9, "ResourceMapParser"

    if-eqz v8, :cond_3e

    .line 309
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseEntry Parsing entry "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const-string/jumbo v10, "original"

    .line 311
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 312
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const-string v11, " at  "

    const-string v12, "Unknown element under <match>: "

    if-ne v4, v7, :cond_fa

    .line 314
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Parsing value "

    if-eqz v8, :cond_6b

    .line 316
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    if-eqz v4, :cond_c3

    .line 318
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c3

    if-eqz v8, :cond_8c

    .line 320
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not null"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    const/4 v7, 0x0

    .line 323
    sget-object v13, Lcom/android/server/om/ResourceMapParser$1;->$SwitchMap$com$android$server$om$ResourceMapParser$ResourceType:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v5, :cond_a2

    const/4 v5, 0x2

    if-eq v13, v5, :cond_9b

    goto :goto_a8

    :cond_9b
    const-string v5, "drawable"

    .line 329
    invoke-virtual {v1, v4, v5, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_a8

    :cond_a2
    const-string v5, "color"

    .line 325
    invoke-virtual {v1, v4, v5, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :goto_a8
    if-eqz v7, :cond_c3

    .line 334
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_c3

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added to list value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_c3
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    if-ne v4, v6, :cond_d5

    .line 342
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d5

    goto/16 :goto_9

    .line 346
    :cond_d5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 357
    :cond_fa
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    :cond_11f
    return v5
.end method

.method public static parseResourceEntries(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Lcom/android/server/om/ResourceMapParser$ResourceType;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/android/server/om/ResourceMapParser$ResourceType;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 244
    :cond_4
    :goto_4
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_fa

    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    .line 246
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_fa

    :cond_14
    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1a

    goto :goto_4

    .line 250
    :cond_1a
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string/jumbo v4, "overlay"

    .line 251
    invoke-interface {p2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    sget-boolean v4, Lcom/android/server/om/ResourceMapParser;->DEBUG_PARSING:Z

    const-string v5, "ResourceMapParser"

    if-eqz v4, :cond_41

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseResourceEntries Parsing tag "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const-string/jumbo v4, "match"

    .line 255
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    if-eqz v3, :cond_d1

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-static {p0, p1, p2, v1, p4}, Lcom/android/server/om/ResourceMapParser;->parseEntry(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/ArrayList;Lcom/android/server/om/ResourceMapParser$ResourceType;)Z

    move-result v4

    if-nez v4, :cond_59

    const/4 p0, 0x0

    return p0

    .line 260
    :cond_59
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b7

    .line 261
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_63
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 262
    sget-object v7, Lcom/android/server/om/ResourceMapParser$1;->$SwitchMap$com$android$server$om$ResourceMapParser$ResourceType:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v2, :cond_89

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7d

    goto :goto_63

    :cond_7d
    const-string v7, "drawable"

    .line 268
    invoke-virtual {p3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_89
    const-string v7, "color"

    .line 264
    invoke-virtual {p3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 273
    :cond_95
    sget-boolean v2, Lcom/android/server/om/ResourceMapParser;->DEBUG_PARSING:Z

    if-eqz v2, :cond_4

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added to map value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 277
    :cond_b7
    sget-boolean v1, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty mapping for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 283
    :cond_d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <resource-map>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_fa
    return v2
.end method

.method public static parseResourceMap(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 24

    .line 159
    sget-boolean v0, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    const-string v1, "ResourceMapParser"

    if-eqz v0, :cond_1f

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseResourceMap = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1f
    :try_start_1f
    new-instance v15, Landroid/content/res/AssetManager;

    invoke-direct {v15}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_24} :catch_ce
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_24} :catch_ce
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_ce
    .catchall {:try_start_1f .. :try_end_24} :catchall_ca

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 166
    :try_start_3a
    sget v21, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I
    :try_end_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_3c} :catch_c1
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3c} :catch_c1
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3c} :catch_c1
    .catchall {:try_start_3a .. :try_end_3c} :catchall_b8

    move-object v3, v15

    move-object v2, v15

    move v15, v0

    :try_start_3f
    invoke-virtual/range {v3 .. v21}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 167
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0
    :try_end_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_4a} :catch_b6
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_4a} :catch_b6
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4a} :catch_b6
    .catchall {:try_start_3f .. :try_end_4a} :catchall_b4

    if-nez v0, :cond_75

    .line 169
    :try_start_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_64} :catch_71
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_64} :catch_71
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_64} :catch_71
    .catchall {:try_start_4c .. :try_end_64} :catchall_6c

    const/4 v1, 0x0

    .line 186
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 187
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_6c
    move-exception v0

    move-object v4, v2

    const/4 v2, 0x0

    goto/16 :goto_e1

    :catch_71
    move-exception v0

    move-object v4, v2

    const/4 v2, 0x0

    goto :goto_d1

    .line 172
    :cond_75
    :try_start_75
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 173
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 174
    new-instance v3, Landroid/content/res/Resources;
    :try_end_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_7f} :catch_b6
    .catch Ljava/lang/RuntimeException; {:try_start_75 .. :try_end_7f} :catch_b6
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7f} :catch_b6
    .catchall {:try_start_75 .. :try_end_7f} :catchall_b4

    const/4 v4, 0x0

    :try_start_80
    invoke-direct {v3, v2, v0, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "resource_map"

    const-string/jumbo v5, "xml"

    .line 175
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a3

    .line 177
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 178
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3, v4}, Lcom/android/server/om/ResourceMapParser;->parseResourceMapToFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_a9

    :cond_a3
    const-string/jumbo v0, "resource_map file not found in res/xml/.. folder"

    .line 180
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_a9} :catch_b2
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_a9} :catch_b2
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_a9} :catch_b2
    .catchall {:try_start_80 .. :try_end_a9} :catchall_b0

    .line 186
    :goto_a9
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 187
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_df

    :catchall_b0
    move-exception v0

    goto :goto_bb

    :catch_b2
    move-exception v0

    goto :goto_c4

    :catchall_b4
    move-exception v0

    goto :goto_ba

    :catch_b6
    move-exception v0

    goto :goto_c3

    :catchall_b8
    move-exception v0

    move-object v2, v15

    :goto_ba
    const/4 v4, 0x0

    :goto_bb
    move-object/from16 v22, v4

    move-object v4, v2

    move-object/from16 v2, v22

    goto :goto_e1

    :catch_c1
    move-exception v0

    move-object v2, v15

    :goto_c3
    const/4 v4, 0x0

    :goto_c4
    move-object/from16 v22, v4

    move-object v4, v2

    move-object/from16 v2, v22

    goto :goto_d1

    :catchall_ca
    move-exception v0

    const/4 v4, 0x0

    move-object v2, v4

    goto :goto_e1

    :catch_ce
    move-exception v0

    const/4 v4, 0x0

    move-object v2, v4

    :goto_d1
    :try_start_d1
    const-string v3, "Failed to parse resource_map"

    .line 183
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d9
    .catchall {:try_start_d1 .. :try_end_d9} :catchall_e0

    .line 186
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 187
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_df
    return-void

    :catchall_e0
    move-exception v0

    .line 186
    :goto_e1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 187
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 188
    throw v0
.end method

.method public static parseResourceMapToFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 194
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 196
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    .line 197
    :cond_d
    :goto_d
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_98

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1d

    .line 199
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_98

    :cond_1d
    if-eq v3, v5, :cond_d

    const/4 v5, 0x4

    if-ne v3, v5, :cond_23

    goto :goto_d

    .line 203
    :cond_23
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 204
    sget-boolean v5, Lcom/android/server/om/ResourceMapParser;->DEBUG_PARSING:Z

    if-eqz v5, :cond_41

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ResourceMapParser"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    if-nez v3, :cond_44

    goto :goto_d

    :cond_44
    if-eqz v2, :cond_84

    const-string v4, "drawable"

    .line 211
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 212
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5c

    .line 213
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_5c
    sget-object v3, Lcom/android/server/om/ResourceMapParser$ResourceType;->DRAWABLE:Lcom/android/server/om/ResourceMapParser$ResourceType;

    invoke-static {p0, p2, p3, v0, v3}, Lcom/android/server/om/ResourceMapParser;->parseResourceEntries(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Lcom/android/server/om/ResourceMapParser$ResourceType;)Z

    move-result v3

    if-nez v3, :cond_d

    return-void

    :cond_65
    const-string v4, "color"

    .line 219
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 220
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7b

    .line 221
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_7b
    sget-object v3, Lcom/android/server/om/ResourceMapParser$ResourceType;->COLOR:Lcom/android/server/om/ResourceMapParser$ResourceType;

    invoke-static {p0, p2, p3, v0, v3}, Lcom/android/server/om/ResourceMapParser;->parseResourceEntries(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Lcom/android/server/om/ResourceMapParser$ResourceType;)Z

    move-result v3

    if-nez v3, :cond_d

    return-void

    :cond_84
    const-string/jumbo v2, "resource-map"

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    move v2, v4

    goto/16 :goto_d

    .line 231
    :cond_90
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Invalid resource_map XML"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 235
    :cond_98
    invoke-static {p0, p1, v0}, Lcom/android/server/om/ResourceMapParser;->writeMapFile(Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static writeMapFile(Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/overlays/remaps/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/16 v3, 0x1e5

    const/4 v4, -0x1

    if-nez v2, :cond_16

    .line 375
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 376
    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 380
    :cond_16
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    const-string v5, "."

    .line 381
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".map"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 384
    :try_start_42
    sget-boolean v1, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    if-eqz v1, :cond_5c

    const-string v1, "ResourceMapParser"

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create resource map for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    const-string p0, "color"

    .line 387
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;
    :try_end_64
    .catchall {:try_start_42 .. :try_end_64} :catchall_101

    const-string v1, " "

    if-eqz p0, :cond_ac

    :try_start_68
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_ac

    const-string v2, "# C\n"

    .line 388
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_7b

    :cond_ac
    const-string p0, "drawable"

    .line 394
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_fa

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-lez p2, :cond_fa

    const-string p2, "# D\n"

    .line 395
    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_fa

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_c9

    .line 401
    :cond_fa
    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_fd
    .catchall {:try_start_68 .. :try_end_fd} :catchall_101

    .line 403
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    return-void

    :catchall_101
    move-exception p0

    .line 382
    :try_start_102
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_106

    goto :goto_10a

    :catchall_106
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10a
    throw p0
.end method
