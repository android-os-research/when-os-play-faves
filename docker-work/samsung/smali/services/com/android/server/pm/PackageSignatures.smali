.class public Lcom/android/server/pm/PackageSignatures;
.super Ljava/lang/Object;
.source "PackageSignatures.java"


# instance fields
.field public mSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/SigningDetails;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageSignatures;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_15

    .line 41
    iget-object v0, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v0, v1, :cond_15

    .line 42
    new-instance v0, Landroid/content/pm/SigningDetails;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p1}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_19

    .line 44
    :cond_15
    sget-object p1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_19
    return-void
.end method


# virtual methods
.method public final readCertsListXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/SigningDetails$Builder;)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;IZ",
            "Landroid/content/pm/SigningDetails$Builder;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    const-string v12, "Error in package manager settings: <cert> index "

    .line 155
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    move-object/from16 v15, p6

    const/4 v7, 0x0

    .line 157
    :goto_11
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a8

    const/4 v2, 0x3

    if-ne v0, v2, :cond_21

    .line 159
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v13, :cond_2a8

    :cond_21
    if-eq v0, v2, :cond_2a0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_28

    goto/16 :goto_2a0

    .line 165
    :cond_28
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cert"

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, " is not a number at "

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-eqz v2, :cond_1c1

    if-ge v7, v11, :cond_19a

    const-string/jumbo v0, "index"

    .line 168
    invoke-interface {v8, v4, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_181

    :try_start_44
    const-string/jumbo v0, "key"

    .line 172
    invoke-interface {v8, v4, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_ad

    if-ltz v2, :cond_8e

    .line 174
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8e

    .line 175
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    if-eqz v0, :cond_6e

    if-eqz p5, :cond_68

    .line 183
    new-instance v14, Landroid/content/pm/Signature;

    invoke-direct {v14, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 185
    :cond_68
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6b
    move v0, v1

    goto/16 :goto_10c

    .line 189
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " is not defined at "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_10b

    .line 195
    :cond_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " is out of bounds at "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_10b

    .line 203
    :cond_ad
    new-instance v14, Landroid/content/pm/Signature;

    invoke-direct {v14, v0}, Landroid/content/pm/Signature;-><init>([B)V

    .line 204
    :goto_b2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_bc

    .line 205
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    .line 207
    :cond_bc
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c2
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_c2} :catch_ef
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_c2} :catch_c3

    goto :goto_6b

    :catch_c3
    move-exception v0

    .line 217
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has an invalid signature at "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_10b

    .line 212
    :catch_ef
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_10b
    const/4 v0, 0x0

    :goto_10c
    if-eqz p5, :cond_1ba

    const-string v2, "flags"

    .line 225
    invoke-interface {v8, v4, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_168

    if-eqz v0, :cond_128

    .line 231
    :try_start_118
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    invoke-virtual {v0, v2}, Landroid/content/pm/Signature;->setFlags(I)V

    goto/16 :goto_1ba

    .line 233
    :cond_128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: signature not available at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to set flags at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/NumberFormatException; {:try_start_118 .. :try_end_148} :catch_149

    goto :goto_1ba

    .line 240
    :catch_149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <cert> flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1ba

    .line 246
    :cond_168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <cert> has no flags at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1ba

    .line 252
    :cond_181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <cert> has no index at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1ba

    .line 257
    :cond_19a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: too many <cert> tags, expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_1ba
    :goto_1ba
    add-int/lit8 v7, v7, 0x1

    .line 263
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_29c

    :cond_1c1
    const-string/jumbo v1, "pastSigs"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27c

    if-nez p5, :cond_25d

    const-string v0, "count"

    .line 267
    invoke-interface {v8, v4, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1f1

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <pastSigs> has no count at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 272
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2a0

    .line 276
    :cond_1f1
    :try_start_1f1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_1f6
    .catch Ljava/lang/NumberFormatException; {:try_start_1f1 .. :try_end_1f6} :catch_237

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move v8, v5

    move v5, v0

    move-object/from16 v17, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move-object v7, v15

    .line 277
    :try_start_208
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/SigningDetails$Builder;)I

    move-result v1

    .line 281
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/Signature;

    .line 280
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    .line 282
    invoke-virtual {v15, v2}, Landroid/content/pm/SigningDetails$Builder;->setPastSigningCertificates([Landroid/content/pm/Signature;)Landroid/content/pm/SigningDetails$Builder;

    move-result-object v15

    if-ge v1, v0, :cond_29a

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <pastSigs> count does not match number of <cert> entries "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v8, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_236
    .catch Ljava/lang/NumberFormatException; {:try_start_208 .. :try_end_236} :catch_23c

    goto :goto_29a

    :catch_237
    move v8, v5

    move-object/from16 v17, v6

    move/from16 v16, v7

    .line 291
    :catch_23c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <pastSigs> count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_29a

    :cond_25d
    move v8, v5

    move/from16 v16, v7

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<pastSigs> encountered multiple times under the same <sigs> at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 300
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_29a

    :cond_27c
    move v8, v5

    move/from16 v16, v7

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <sigs>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 306
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_29a
    :goto_29a
    move/from16 v7, v16

    :goto_29c
    move-object/from16 v8, p1

    goto/16 :goto_11

    :cond_2a0
    :goto_2a0
    move/from16 v16, v7

    move-object/from16 v8, p1

    move/from16 v7, v16

    goto/16 :goto_11

    :cond_2a8
    move/from16 v16, v7

    return v16
.end method

.method public readXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 110
    new-instance v7, Landroid/content/pm/SigningDetails$Builder;

    invoke-direct {v7}, Landroid/content/pm/SigningDetails$Builder;-><init>()V

    const/4 v0, 0x0

    const-string v1, "count"

    const/4 v2, -0x1

    .line 112
    invoke-interface {p1, v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v2, :cond_2c

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error in package manager settings: <sigs> has no count at "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {v9, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 117
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :cond_2c
    const/4 v1, 0x0

    const-string/jumbo v2, "schemeVersion"

    .line 121
    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4e

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <sigs> has no schemeVersion at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 128
    :cond_4e
    invoke-virtual {v7, v0}, Landroid/content/pm/SigningDetails$Builder;->setSignatureSchemeVersion(I)Landroid/content/pm/SigningDetails$Builder;

    .line 129
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v10

    move v4, v8

    move-object v6, v7

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/SigningDetails$Builder;)I

    move-result p2

    .line 131
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/Signature;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    .line 132
    invoke-virtual {v7, v0}, Landroid/content/pm/SigningDetails$Builder;->setSignatures([Landroid/content/pm/Signature;)Landroid/content/pm/SigningDetails$Builder;

    if-ge p2, v8, :cond_8a

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in package manager settings: <sigs> count does not match number of  <cert> entries"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {v9, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 140
    :cond_8a
    :try_start_8a
    invoke-virtual {v7}, Landroid/content/pm/SigningDetails$Builder;->build()Landroid/content/pm/SigningDetails;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;
    :try_end_90
    .catch Ljava/security/cert/CertificateException; {:try_start_8a .. :try_end_90} :catch_91

    goto :goto_9a

    :catch_91
    const-string p1, "Error in package manager settings: <sigs> unable to convert certificate(s) to public key(s)."

    .line 142
    invoke-static {v9, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 145
    sget-object p1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_9a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "PackageSignatures{"

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version:"

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signatures:["

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    const-string v2, ", "

    const/4 v3, 0x0

    if-eqz v1, :cond_5a

    move v1, v3

    .line 321
    :goto_36
    iget-object v4, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_5a

    if-lez v1, :cond_44

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_44
    iget-object v4, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 324
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v4

    .line 323
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_5a
    const-string v1, "]"

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", past signatures:["

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 330
    :goto_6c
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v1, v1

    if-ge v3, v1, :cond_a8

    if-lez v3, :cond_7a

    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_7a
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 333
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I

    move-result v1

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags: "

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 336
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->getFlags()I

    move-result v1

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    :cond_a8
    const-string p0, "]}"

    .line 339
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeCertsListXml(Landroid/util/TypedXmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 81
    :goto_2
    array-length v1, p3

    if-ge v0, v1, :cond_53

    const/4 v1, 0x0

    const-string v2, "cert"

    .line 82
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    aget-object v3, p3, v0

    .line 84
    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v4

    .line 85
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, p0

    :goto_16
    const-string/jumbo v7, "index"

    if-ge v6, v5, :cond_34

    .line 88
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/Signature;

    .line 89
    invoke-virtual {v8}, Landroid/content/pm/Signature;->hashCode()I

    move-result v9

    if-ne v9, v4, :cond_31

    invoke-virtual {v8, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 90
    invoke-interface {p1, v1, v7, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_34

    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_34
    :goto_34
    if-lt v6, v5, :cond_42

    .line 95
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {p1, v1, v7, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "key"

    .line 97
    invoke-virtual {v3, p1, v1, v4}, Landroid/content/pm/Signature;->writeToXmlAttributeBytesHex(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    if-eqz p4, :cond_4d

    .line 102
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    const-string v4, "flags"

    invoke-interface {p1, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    :cond_4d
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_53
    return-void
.end method

.method public writeXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 61
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v1, v1

    const-string v2, "count"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v1

    const-string/jumbo v3, "schemeVersion"

    invoke-interface {p1, v0, v3, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p3, v1, v3}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Landroid/util/TypedXmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V

    .line 67
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v1

    if-eqz v1, :cond_54

    const-string/jumbo v1, "pastSigs"

    .line 68
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 70
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v3

    array-length v3, v3

    .line 69
    invoke-interface {p1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 72
    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v2

    const/4 v3, 0x1

    .line 71
    invoke-virtual {p0, p1, p3, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Landroid/util/TypedXmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V

    .line 73
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    :cond_54
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
