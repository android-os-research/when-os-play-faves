.class public Lcom/android/internal/util/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/XmlUtils$ReadMapCallback;,
        Lcom/android/internal/util/XmlUtils$WriteMapCallback;,
        Lcom/android/internal/util/XmlUtils$ForcedTypedXmlPullParser;,
        Lcom/android/internal/util/XmlUtils$ForcedTypedXmlSerializer;
    }
.end annotation


# static fields
.field private static final greylist-max-o STRING_ARRAY_SEPARATOR:Ljava/lang/String; = ":"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1689
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 v0, 0x1

    if-eq v1, v0, :cond_c

    goto :goto_0

    .line 1694
    :cond_c
    if-ne v1, v2, :cond_40

    .line 1698
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1702
    return-void

    .line 1699
    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1695
    :cond_40
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final greylist convertValueToBoolean(Ljava/lang/CharSequence;Z)Z
    .registers 4
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "defaultValue"    # Z

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 291
    return p1

    .line 294
    :cond_8
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 295
    const-string/jumbo v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 296
    const-string v1, "TRUE"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 297
    :cond_21
    const/4 v0, 0x1

    .line 299
    :cond_22
    return v0
.end method

.method public static final greylist convertValueToInt(Ljava/lang/CharSequence;I)I
    .registers 10
    .param p0, "charSeq"    # Ljava/lang/CharSequence;
    .param p1, "defaultValue"    # I

    .line 306
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 307
    return p1

    .line 310
    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "nm":Ljava/lang/String;
    const/4 v1, 0x1

    .line 317
    .local v1, "sign":I
    const/4 v2, 0x0

    .line 318
    .local v2, "index":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 319
    .local v3, "len":I
    const/16 v4, 0xa

    .line 321
    .local v4, "base":I
    const/16 v5, 0x2d

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v5, v7, :cond_1f

    .line 322
    const/4 v1, -0x1

    .line 323
    add-int/lit8 v2, v2, 0x1

    .line 326
    :cond_1f
    const/16 v5, 0x30

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v5, v7, :cond_45

    .line 328
    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_2c

    .line 329
    return v6

    .line 331
    :cond_2c
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 333
    .local v5, "c":C
    const/16 v6, 0x78

    if-eq v6, v5, :cond_40

    const/16 v6, 0x58

    if-ne v6, v5, :cond_3b

    goto :goto_40

    .line 337
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    .line 338
    const/16 v4, 0x8

    goto :goto_44

    .line 334
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x2

    .line 335
    const/16 v4, 0x10

    .line 340
    .end local v5    # "c":C
    :goto_44
    goto :goto_51

    .line 341
    :cond_45
    const/16 v5, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_51

    .line 343
    add-int/lit8 v2, v2, 0x1

    .line 344
    const/16 v4, 0x10

    .line 347
    :cond_51
    :goto_51
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    mul-int/2addr v5, v1

    return v5
.end method

.method public static final greylist-max-o convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I
    .registers 5
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "options"    # [Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 274
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 276
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 277
    return v0

    .line 275
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 281
    .end local v0    # "i":I
    :cond_16
    return p2
.end method

.method public static greylist-max-o convertValueToUnsignedInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 351
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 352
    return p1

    .line 355
    :cond_7
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public static blacklist makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;
    .registers 2
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 253
    instance-of v0, p0, Landroid/util/TypedXmlPullParser;

    if-eqz v0, :cond_8

    .line 254
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlPullParser;

    return-object v0

    .line 256
    :cond_8
    new-instance v0, Lcom/android/internal/util/XmlUtils$ForcedTypedXmlPullParser;

    invoke-direct {v0, p0}, Lcom/android/internal/util/XmlUtils$ForcedTypedXmlPullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method

.method public static blacklist makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;
    .registers 2
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    instance-of v0, p0, Landroid/util/TypedXmlSerializer;

    if-eqz v0, :cond_8

    .line 131
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlSerializer;

    return-object v0

    .line 133
    :cond_8
    new-instance v0, Lcom/android/internal/util/XmlUtils$ForcedTypedXmlSerializer;

    invoke-direct {v0, p0}, Lcom/android/internal/util/XmlUtils$ForcedTypedXmlSerializer;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    return-object v0
.end method

.method public static final greylist nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1708
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 v0, 0x1

    if-eq v1, v0, :cond_c

    goto :goto_0

    .line 1712
    :cond_c
    return-void
.end method

.method public static greylist-max-o nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1717
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1718
    .local v0, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v2, 0x3

    if-ne v0, v2, :cond_11

    .line 1719
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, p1, :cond_11

    goto :goto_1e

    .line 1722
    :cond_11
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1d

    .line 1723
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-ne v2, v3, :cond_1d

    .line 1724
    return v1

    .line 1726
    .end local v0    # "type":I
    :cond_1d
    goto :goto_0

    .line 1720
    .restart local v0    # "type":I
    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist-max-o parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I
    .registers 7
    .param p0, "charSeq"    # Ljava/lang/CharSequence;

    .line 359
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 363
    .local v1, "index":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 364
    .local v2, "len":I
    const/16 v3, 0xa

    .line 366
    .local v3, "base":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v5, v4, :cond_32

    .line 368
    add-int/lit8 v4, v2, -0x1

    if-ne v1, v4, :cond_19

    .line 369
    const/4 v4, 0x0

    return v4

    .line 371
    :cond_19
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 373
    .local v4, "c":C
    const/16 v5, 0x78

    if-eq v5, v4, :cond_2d

    const/16 v5, 0x58

    if-ne v5, v4, :cond_28

    goto :goto_2d

    .line 377
    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 378
    const/16 v3, 0x8

    goto :goto_3f

    .line 374
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x2

    .line 375
    const/16 v3, 0x10

    goto :goto_3f

    .line 380
    .end local v4    # "c":C
    :cond_32
    const/16 v4, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_3f

    .line 381
    add-int/lit8 v1, v1, 0x1

    .line 382
    const/16 v3, 0x10

    goto :goto_40

    .line 380
    :cond_3f
    :goto_3f
    nop

    .line 385
    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method public static greylist-max-o readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 1924
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v0

    .line 1925
    .local v0, "value":[B
    if-eqz v0, :cond_d

    .line 1926
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1928
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 3
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 1844
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 1850
    instance-of v0, p0, Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1851
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlPullParser;

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1853
    :cond_d
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1854
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1855
    return p2

    .line 1857
    :cond_18
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static greylist-max-o readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B
    .registers 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 1896
    instance-of v0, p0, Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1898
    :try_start_5
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlPullParser;

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_c} :catch_d

    return-object v0

    .line 1899
    :catch_d
    move-exception v0

    .line 1900
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    return-object v1

    .line 1903
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_f
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1904
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1905
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1

    .line 1907
    :cond_1f
    return-object v1
.end method

.method public static greylist-max-o readFloatAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1817
    instance-of v0, p0, Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1819
    :try_start_5
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlPullParser;

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_c} :catch_d

    return v0

    .line 1820
    :catch_d
    move-exception v0

    .line 1821
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1824
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_18
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1826
    .local v0, "value":Ljava/lang/String;
    :try_start_1c
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_20} :catch_21

    return v1

    .line 1827
    :catch_21
    move-exception v1

    .line 1828
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1747
    instance-of v0, p0, Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1749
    :try_start_5
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlPullParser;

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_c} :catch_d

    return v0

    .line 1750
    :catch_d
    move-exception v0

    .line 1751
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1754
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_18
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1756
    .local v0, "value":Ljava/lang/String;
    :try_start_1c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_20} :catch_21

    return v1

    .line 1757
    :catch_21
    move-exception v1

    .line 1758
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1731
    instance-of v0, p0, Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1732
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlPullParser;

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1734
    :cond_d
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1736
    return p2

    .line 1739
    :cond_18
    :try_start_18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v1

    .line 1740
    :catch_1d
    move-exception v1

    .line 1741
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static final greylist-max-o readListXml(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 987
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 988
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 989
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public static greylist-max-o readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1790
    instance-of v0, p0, Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1792
    :try_start_5
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlPullParser;

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_c} :catch_d

    return-wide v0

    .line 1793
    :catch_d
    move-exception v0

    .line 1794
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1797
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_18
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1799
    .local v0, "value":Ljava/lang/String;
    :try_start_1c
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_20} :catch_21

    return-wide v1

    .line 1800
    :catch_21
    move-exception v1

    .line 1801
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 1774
    instance-of v0, p0, Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1775
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlPullParser;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 1777
    :cond_d
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1779
    return-wide p2

    .line 1782
    :cond_18
    :try_start_18
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1c} :catch_1d

    return-wide v1

    .line 1783
    :catch_1d
    move-exception v1

    .line 1784
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method public static final greylist readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 967
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 968
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 969
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    return-object v1
.end method

.method public static final greylist-max-o readSetXml(Ljava/io/InputStream;)Ljava/util/HashSet;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1010
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 1011
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1012
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    return-object v1
.end method

.method public static greylist-max-o readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 1884
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist readThisArrayMapXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;
    .registers 9
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/XmlUtils$ReadMapCallback;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1080
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1082
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    .line 1084
    .local v1, "eventType":I
    :goto_9
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_18

    .line 1085
    invoke-static {p0, p2, p3, v3}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1086
    .local v2, "val":Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v0, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "val":Ljava/lang/Object;
    goto :goto_4d

    .line 1087
    :cond_18
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4d

    .line 1088
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1089
    return-object v0

    .line 1091
    :cond_26
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1092
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1087
    :cond_4d
    :goto_4d
    nop

    .line 1094
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    .line 1095
    if-eq v1, v3, :cond_55

    goto :goto_9

    .line 1097
    :cond_55
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Document ended before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final blacklist readThisBooleanArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Z
    .registers 10
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1485
    const/4 v0, 0x0

    const-string/jumbo v1, "num"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1486
    .local v1, "num":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    .line 1488
    new-array v2, v1, [Z

    .line 1489
    .local v2, "array":[Z
    const/4 v3, 0x0

    .line 1491
    .local v3, "i":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v4

    .line 1493
    .local v4, "eventType":I
    :goto_12
    const/4 v5, 0x2

    const-string v6, "item"

    if-ne v4, v5, :cond_48

    .line 1494
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1495
    const-string/jumbo v5, "value"

    invoke-interface {p0, v0, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v2, v3

    goto :goto_8a

    .line 1497
    :cond_2b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1499
    :cond_48
    const/4 v5, 0x3

    if-ne v4, v5, :cond_8a

    .line 1500
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1501
    return-object v2

    .line 1502
    :cond_56
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1503
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 1505
    :cond_63
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1506
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1509
    :cond_8a
    :goto_8a
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    .line 1510
    const/4 v5, 0x1

    if-eq v4, v5, :cond_92

    goto :goto_12

    .line 1512
    :cond_92
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Document ended before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final blacklist readThisByteArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[B
    .registers 10
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1242
    const/4 v0, 0x0

    const-string/jumbo v1, "num"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1246
    .local v0, "num":I
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 1248
    .local v1, "array":[B
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v2

    .line 1250
    .local v2, "eventType":I
    :goto_f
    const/4 v3, 0x4

    if-ne v2, v3, :cond_40

    .line 1251
    if-lez v0, :cond_75

    .line 1252
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1253
    .local v3, "values":Ljava/lang/String;
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    if-ne v4, v5, :cond_27

    .line 1257
    invoke-static {v3}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 1258
    .end local v3    # "values":Ljava/lang/String;
    goto :goto_75

    .line 1254
    .restart local v3    # "values":Ljava/lang/String;
    :cond_27
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value found in byte-array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1259
    .end local v3    # "values":Ljava/lang/String;
    :cond_40
    const/4 v3, 0x3

    if-ne v2, v3, :cond_75

    .line 1260
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1261
    return-object v1

    .line 1263
    :cond_4e
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1265
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1268
    :cond_75
    :goto_75
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 1269
    const/4 v3, 0x1

    if-eq v2, v3, :cond_7d

    goto :goto_f

    .line 1271
    :cond_7d
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document ended before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final blacklist readThisDoubleArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[D
    .registers 10
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1391
    const/4 v0, 0x0

    const-string/jumbo v1, "num"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1392
    .local v1, "num":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    .line 1394
    new-array v2, v1, [D

    .line 1395
    .local v2, "array":[D
    const/4 v3, 0x0

    .line 1397
    .local v3, "i":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v4

    .line 1399
    .local v4, "eventType":I
    :goto_12
    const/4 v5, 0x2

    const-string v6, "item"

    if-ne v4, v5, :cond_48

    .line 1400
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1401
    const-string/jumbo v5, "value"

    invoke-interface {p0, v0, v5}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, v2, v3

    goto :goto_8a

    .line 1403
    :cond_2b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1405
    :cond_48
    const/4 v5, 0x3

    if-ne v4, v5, :cond_8a

    .line 1406
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1407
    return-object v2

    .line 1408
    :cond_56
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1409
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 1411
    :cond_63
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1412
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1415
    :cond_8a
    :goto_8a
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    .line 1416
    const/4 v5, 0x1

    if-eq v4, v5, :cond_92

    goto :goto_12

    .line 1418
    :cond_92
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Document ended before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final blacklist readThisIntArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I
    .registers 10
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1293
    const/4 v0, 0x0

    const-string/jumbo v1, "num"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1294
    .local v1, "num":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    .line 1296
    new-array v2, v1, [I

    .line 1297
    .local v2, "array":[I
    const/4 v3, 0x0

    .line 1299
    .local v3, "i":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v4

    .line 1301
    .local v4, "eventType":I
    :goto_12
    const/4 v5, 0x2

    const-string v6, "item"

    if-ne v4, v5, :cond_48

    .line 1302
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1303
    const-string/jumbo v5, "value"

    invoke-interface {p0, v0, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v3

    goto :goto_8a

    .line 1305
    :cond_2b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1306
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1308
    :cond_48
    const/4 v5, 0x3

    if-ne v4, v5, :cond_8a

    .line 1309
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1310
    return-object v2

    .line 1311
    :cond_56
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1312
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 1314
    :cond_63
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1316
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_8a
    :goto_8a
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    .line 1320
    const/4 v5, 0x1

    if-eq v4, v5, :cond_92

    goto :goto_12

    .line 1322
    :cond_92
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Document ended before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final blacklist readThisListXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1117
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readThisListXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist readThisListXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;
    .registers 10
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .param p4, "arrayMap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1139
    .local v0, "list":Ljava/util/ArrayList;
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    .line 1141
    .local v1, "eventType":I
    :goto_9
    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 1142
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1143
    .local v2, "val":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2    # "val":Ljava/lang/Object;
    goto :goto_49

    .line 1145
    :cond_14
    const/4 v2, 0x3

    if-ne v1, v2, :cond_49

    .line 1146
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1147
    return-object v0

    .line 1149
    :cond_22
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1150
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1145
    :cond_49
    :goto_49
    nop

    .line 1152
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    .line 1153
    const/4 v2, 0x1

    if-eq v1, v2, :cond_52

    goto :goto_9

    .line 1155
    :cond_52
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Document ended before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final blacklist readThisLongArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[J
    .registers 10
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1344
    const/4 v0, 0x0

    const-string/jumbo v1, "num"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1345
    .local v1, "num":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    .line 1347
    new-array v2, v1, [J

    .line 1348
    .local v2, "array":[J
    const/4 v3, 0x0

    .line 1350
    .local v3, "i":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v4

    .line 1352
    .local v4, "eventType":I
    :goto_12
    const/4 v5, 0x2

    const-string v6, "item"

    if-ne v4, v5, :cond_48

    .line 1353
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1354
    const-string/jumbo v5, "value"

    invoke-interface {p0, v0, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v2, v3

    goto :goto_8a

    .line 1356
    :cond_2b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_48
    const/4 v5, 0x3

    if-ne v4, v5, :cond_8a

    .line 1359
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1360
    return-object v2

    .line 1361
    :cond_56
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1362
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 1364
    :cond_63
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1365
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1368
    :cond_8a
    :goto_8a
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    .line 1369
    const/4 v5, 0x1

    if-eq v4, v5, :cond_92

    goto :goto_12

    .line 1371
    :cond_92
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Document ended before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final blacklist readThisMapXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1031
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/XmlUtils;->readThisMapXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist readThisMapXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;
    .registers 9
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/XmlUtils$ReadMapCallback;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1052
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1054
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    .line 1056
    .local v1, "eventType":I
    :goto_9
    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 1057
    const/4 v2, 0x0

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v3

    .line 1058
    .local v3, "val":Ljava/lang/Object;
    aget-object v2, p2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "val":Ljava/lang/Object;
    goto :goto_4c

    .line 1059
    :cond_17
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4c

    .line 1060
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1061
    return-object v0

    .line 1063
    :cond_25
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1064
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1059
    :cond_4c
    :goto_4c
    nop

    .line 1066
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    .line 1067
    const/4 v2, 0x1

    if-eq v1, v2, :cond_55

    goto :goto_9

    .line 1069
    :cond_55
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Document ended before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final blacklist readThisPrimitiveValueXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1670
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 1671
    invoke-interface {p0, v2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1672
    :cond_15
    const-string/jumbo v0, "long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1673
    invoke-interface {p0, v2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1674
    :cond_27
    const-string v0, "float"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1675
    invoke-interface {p0, v2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1676
    :cond_38
    const-string v0, "double"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1677
    invoke-interface {p0, v2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1678
    :cond_49
    const-string v0, "boolean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1679
    invoke-interface {p0, v2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1681
    :cond_5a
    return-object v2
.end method

.method public static final blacklist readThisSetXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;
    .registers 5
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1178
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readThisSetXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist readThisSetXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;
    .registers 10
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .param p4, "arrayMap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1204
    .local v0, "set":Ljava/util/HashSet;
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    .line 1206
    .local v1, "eventType":I
    :goto_9
    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 1207
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1208
    .local v2, "val":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .end local v2    # "val":Ljava/lang/Object;
    goto :goto_49

    .line 1210
    :cond_14
    const/4 v2, 0x3

    if-ne v1, v2, :cond_49

    .line 1211
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1212
    return-object v0

    .line 1214
    :cond_22
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1215
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1210
    :cond_49
    :goto_49
    nop

    .line 1217
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    .line 1218
    const/4 v2, 0x1

    if-eq v1, v2, :cond_52

    goto :goto_9

    .line 1220
    :cond_52
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Document ended before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final blacklist readThisStringArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1438
    const/4 v0, 0x0

    const-string/jumbo v1, "num"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1439
    .local v1, "num":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    .line 1441
    new-array v2, v1, [Ljava/lang/String;

    .line 1442
    .local v2, "array":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1444
    .local v3, "i":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v4

    .line 1446
    .local v4, "eventType":I
    :goto_12
    const/4 v5, 0x2

    const-string v6, "item"

    if-ne v4, v5, :cond_48

    .line 1447
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1448
    const-string/jumbo v5, "value"

    invoke-interface {p0, v0, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    goto :goto_8a

    .line 1450
    :cond_2b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1452
    :cond_48
    const/4 v5, 0x3

    if-ne v4, v5, :cond_8a

    .line 1453
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1454
    return-object v2

    .line 1455
    :cond_56
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1456
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 1458
    :cond_63
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1459
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1462
    :cond_8a
    :goto_8a
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    .line 1463
    const/4 v5, 0x1

    if-eq v4, v5, :cond_92

    goto :goto_12

    .line 1465
    :cond_92
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Document ended before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final blacklist readThisValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;
    .registers 15
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "name"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/util/XmlUtils$ReadMapCallback;
    .param p3, "arrayMap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1555
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1556
    .local v0, "valueName":Ljava/lang/String;
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1562
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_1d

    .line 1563
    const/4 v2, 0x0

    .local v2, "res":Ljava/lang/Object;
    goto/16 :goto_9c

    .line 1564
    .end local v2    # "res":Ljava/lang/Object;
    :cond_1d
    const-string/jumbo v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 1565
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1567
    .local v8, "value":Ljava/lang/StringBuilder;
    :goto_2b
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "eventType":I
    if-eq v9, v6, :cond_8c

    .line 1568
    if-ne v10, v5, :cond_62

    .line 1569
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1570
    aput-object v0, p1, v7

    .line 1572
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1574
    :cond_45
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected end tag in <string>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1575
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1576
    :cond_62
    if-ne v10, v4, :cond_6c

    .line 1577
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 1578
    :cond_6c
    if-eq v10, v3, :cond_6f

    goto :goto_2b

    .line 1579
    :cond_6f
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected start tag in <string>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1580
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1583
    :cond_8c
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Unexpected end of document in <string>"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1585
    .end local v8    # "value":Ljava/lang/StringBuilder;
    .end local v10    # "eventType":I
    :cond_94
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readThisPrimitiveValueXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    .local v8, "res":Ljava/lang/Object;
    if-eqz v2, :cond_147

    move-object v2, v8

    .line 1647
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    :goto_9c
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "eventType":I
    if-eq v8, v6, :cond_128

    .line 1648
    const-string v8, ">: "

    if-ne v9, v5, :cond_d9

    .line 1649
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 1650
    aput-object v0, p1, v7

    .line 1652
    return-object v2

    .line 1654
    :cond_b4
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected end tag in <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1655
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1656
    :cond_d9
    if-eq v9, v4, :cond_103

    .line 1659
    if-eq v9, v3, :cond_de

    goto :goto_9c

    .line 1660
    :cond_de
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start tag in <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1661
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1657
    :cond_103
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected text in <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1658
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1664
    :cond_128
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected end of document in <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1587
    .end local v2    # "res":Ljava/lang/Object;
    .end local v9    # "eventType":I
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_147
    const-string v2, "byte-array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_156

    .line 1588
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisByteArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v2

    .line 1589
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1591
    return-object v2

    .line 1592
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_156
    const-string v2, "int-array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_165

    .line 1593
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisIntArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v2

    .line 1594
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1596
    return-object v2

    .line 1597
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_165
    const-string/jumbo v2, "long-array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_175

    .line 1598
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisLongArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v2

    .line 1599
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1601
    return-object v2

    .line 1602
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_175
    const-string v2, "double-array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_184

    .line 1603
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisDoubleArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[D

    move-result-object v2

    .line 1604
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1606
    return-object v2

    .line 1607
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_184
    const-string/jumbo v2, "string-array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_194

    .line 1608
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1609
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1611
    return-object v2

    .line 1612
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_194
    const-string v2, "boolean-array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a3

    .line 1613
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->readThisBooleanArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v2

    .line 1614
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1616
    return-object v2

    .line 1617
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_1a3
    const-string/jumbo v2, "map"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 1618
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    .line 1619
    if-eqz p3, :cond_1b6

    .line 1620
    invoke-static {p0, v2, p1, p2}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object v2

    goto :goto_1ba

    .line 1621
    :cond_1b6
    invoke-static {p0, v2, p1, p2}, Lcom/android/internal/util/XmlUtils;->readThisMapXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;

    move-result-object v2

    :goto_1ba
    nop

    .line 1622
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1624
    return-object v2

    .line 1625
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_1be
    const-string/jumbo v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d1

    .line 1626
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    .line 1627
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/util/XmlUtils;->readThisListXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 1628
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1630
    return-object v2

    .line 1631
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_1d1
    const-string/jumbo v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e4

    .line 1632
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    .line 1633
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/util/XmlUtils;->readThisSetXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;

    move-result-object v2

    .line 1634
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1636
    return-object v2

    .line 1637
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_1e4
    if-eqz p2, :cond_1ed

    .line 1638
    invoke-interface {p2, p0, v1}, Lcom/android/internal/util/XmlUtils$ReadMapCallback;->readThisUnknownObjectXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1639
    .end local v8    # "res":Ljava/lang/Object;
    .restart local v2    # "res":Ljava/lang/Object;
    aput-object v0, p1, v7

    .line 1640
    return-object v2

    .line 1642
    .end local v2    # "res":Ljava/lang/Object;
    .restart local v8    # "res":Ljava/lang/Object;
    :cond_1ed
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 1872
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1873
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_b

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public static final blacklist readValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1534
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    .line 1536
    .local v0, "eventType":I
    :goto_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1537
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->readThisValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1538
    :cond_e
    const/4 v1, 0x3

    if-eq v0, v1, :cond_41

    .line 1541
    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    .line 1545
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    .line 1546
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    goto :goto_4

    .line 1548
    :cond_1c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Unexpected end of document"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1542
    :cond_24
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1543
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1539
    :cond_41
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected end tag at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1540
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 265
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_16

    const/4 v1, 0x3

    if-ne v2, v1, :cond_4

    .line 267
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_16

    goto :goto_4

    .line 269
    :cond_16
    return-void
.end method

.method public static greylist-max-o writeBitmapAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1935
    if-eqz p2, :cond_15

    .line 1936
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1937
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1938
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 1940
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_15
    return-void
.end method

.method public static final blacklist writeBooleanArrayXml([ZLjava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .registers 10
    .param p0, "val"    # [Z
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 786
    const-string/jumbo v1, "null"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 787
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 788
    return-void

    .line 791
    :cond_d
    const-string v1, "boolean-array"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 792
    if-eqz p1, :cond_1a

    .line 793
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 796
    :cond_1a
    array-length v2, p0

    .line 797
    .local v2, "N":I
    const-string/jumbo v3, "num"

    invoke-interface {p2, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 799
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v2, :cond_37

    .line 800
    const-string v4, "item"

    invoke-interface {p2, v0, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    aget-boolean v5, p0, v3

    const-string/jumbo v6, "value"

    invoke-interface {p2, v0, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 802
    invoke-interface {p2, v0, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 799
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 805
    .end local v3    # "i":I
    :cond_37
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 806
    return-void
.end method

.method public static greylist-max-o writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1864
    instance-of v0, p0, Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1865
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlSerializer;

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1866
    return-void

    .line 1868
    :cond_c
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1869
    return-void
.end method

.method public static greylist-max-o writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1914
    if-eqz p2, :cond_16

    .line 1915
    instance-of v0, p0, Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1916
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlSerializer;

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 1917
    return-void

    .line 1919
    :cond_e
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1921
    :cond_16
    return-void
.end method

.method public static final blacklist writeByteArrayXml([BLjava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .registers 7
    .param p0, "val"    # [B
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 594
    const-string/jumbo v1, "null"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    return-void

    .line 599
    :cond_d
    const-string v1, "byte-array"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    if-eqz p1, :cond_1a

    .line 601
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    :cond_1a
    array-length v2, p0

    .line 605
    .local v2, "N":I
    const-string/jumbo v3, "num"

    invoke-interface {p2, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 607
    invoke-static {p0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 609
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    return-void
.end method

.method public static final blacklist writeDoubleArrayXml([DLjava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .registers 11
    .param p0, "val"    # [D
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 708
    const-string/jumbo v1, "null"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 709
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 710
    return-void

    .line 713
    :cond_d
    const-string v1, "double-array"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 714
    if-eqz p1, :cond_1a

    .line 715
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 718
    :cond_1a
    array-length v2, p0

    .line 719
    .local v2, "N":I
    const-string/jumbo v3, "num"

    invoke-interface {p2, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 721
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v2, :cond_37

    .line 722
    const-string v4, "item"

    invoke-interface {p2, v0, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 723
    aget-wide v5, p0, v3

    const-string/jumbo v7, "value"

    invoke-interface {p2, v0, v7, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 724
    invoke-interface {p2, v0, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 721
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 727
    .end local v3    # "i":I
    :cond_37
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 728
    return-void
.end method

.method public static greylist-max-o writeFloatAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;F)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1835
    instance-of v0, p0, Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1836
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlSerializer;

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 1837
    return-void

    .line 1839
    :cond_c
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1840
    return-void
.end method

.method public static final blacklist writeIntArrayXml([ILjava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .registers 10
    .param p0, "val"    # [I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 630
    const-string/jumbo v1, "null"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    return-void

    .line 635
    :cond_d
    const-string v1, "int-array"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 636
    if-eqz p1, :cond_1a

    .line 637
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 640
    :cond_1a
    array-length v2, p0

    .line 641
    .local v2, "N":I
    const-string/jumbo v3, "num"

    invoke-interface {p2, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 643
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v2, :cond_37

    .line 644
    const-string v4, "item"

    invoke-interface {p2, v0, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    aget v5, p0, v3

    const-string/jumbo v6, "value"

    invoke-interface {p2, v0, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    invoke-interface {p2, v0, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 643
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 649
    .end local v3    # "i":I
    :cond_37
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    return-void
.end method

.method public static greylist-max-o writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1765
    instance-of v0, p0, Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1766
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlSerializer;

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1767
    return-void

    .line 1769
    :cond_c
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1770
    return-void
.end method

.method public static final greylist-max-o writeListXml(Ljava/util/List;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "val"    # Ljava/util/List;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 427
    .local v0, "serializer":Landroid/util/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 428
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 429
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 430
    invoke-static {p0, v3, v0}, Lcom/android/internal/util/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 431
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 432
    return-void
.end method

.method public static final blacklist writeListXml(Ljava/util/List;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .param p0, "val"    # Ljava/util/List;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 537
    const-string/jumbo v1, "null"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    return-void

    .line 542
    :cond_d
    const-string/jumbo v1, "list"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    if-eqz p1, :cond_1b

    .line 544
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    :cond_1b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 548
    .local v2, "N":I
    const/4 v3, 0x0

    .line 549
    .local v3, "i":I
    :goto_20
    if-ge v3, v2, :cond_2c

    .line 550
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0, p2}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 551
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 554
    :cond_2c
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    return-void
.end method

.method public static final blacklist writeLongArrayXml([JLjava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .registers 11
    .param p0, "val"    # [J
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 669
    const-string/jumbo v1, "null"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 670
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 671
    return-void

    .line 674
    :cond_d
    const-string/jumbo v1, "long-array"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 675
    if-eqz p1, :cond_1b

    .line 676
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 679
    :cond_1b
    array-length v2, p0

    .line 680
    .local v2, "N":I
    const-string/jumbo v3, "num"

    invoke-interface {p2, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 682
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-ge v3, v2, :cond_38

    .line 683
    const-string v4, "item"

    invoke-interface {p2, v0, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 684
    aget-wide v5, p0, v3

    const-string/jumbo v7, "value"

    invoke-interface {p2, v0, v7, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 685
    invoke-interface {p2, v0, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 682
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 688
    .end local v3    # "i":I
    :cond_38
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 689
    return-void
.end method

.method public static greylist-max-o writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1808
    instance-of v0, p0, Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1809
    move-object v0, p0

    check-cast v0, Landroid/util/TypedXmlSerializer;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1810
    return-void

    .line 1812
    :cond_c
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1813
    return-void
.end method

.method public static final blacklist writeMapXml(Ljava/util/Map;Landroid/util/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V
    .registers 8
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "callback"    # Lcom/android/internal/util/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    if-nez p0, :cond_3

    .line 507
    return-void

    .line 510
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 511
    .local v0, "s":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 513
    .local v1, "i":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 514
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 515
    .local v2, "e":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Landroid/util/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 516
    .end local v2    # "e":Ljava/util/Map$Entry;
    goto :goto_b

    .line 517
    :cond_25
    return-void
.end method

.method public static final greylist writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 404
    .local v0, "serializer":Landroid/util/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 405
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 406
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 407
    invoke-static {p0, v3, v0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 408
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 409
    return-void
.end method

.method public static final blacklist writeMapXml(Ljava/util/Map;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .registers 4
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Landroid/util/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 451
    return-void
.end method

.method public static final blacklist writeMapXml(Ljava/util/Map;Ljava/lang/String;Landroid/util/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V
    .registers 7
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 474
    const-string/jumbo v1, "null"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    return-void

    .line 479
    :cond_d
    const-string/jumbo v1, "map"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 480
    if-eqz p1, :cond_1b

    .line 481
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 484
    :cond_1b
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Landroid/util/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 486
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    return-void
.end method

.method public static final blacklist writeSetXml(Ljava/util/Set;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .registers 7
    .param p0, "val"    # Ljava/util/Set;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 560
    const-string/jumbo v1, "null"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    return-void

    .line 565
    :cond_d
    const-string/jumbo v1, "set"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    if-eqz p1, :cond_1b

    .line 567
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    :cond_1b
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 571
    .local v3, "v":Ljava/lang/Object;
    invoke-static {v3, v0, p2}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 572
    .end local v3    # "v":Ljava/lang/Object;
    goto :goto_1f

    .line 574
    :cond_2d
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    return-void
.end method

.method public static final blacklist writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .registers 10
    .param p0, "val"    # [Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 747
    const-string/jumbo v1, "null"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 748
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 749
    return-void

    .line 752
    :cond_d
    const-string/jumbo v1, "string-array"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 753
    if-eqz p1, :cond_1b

    .line 754
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 757
    :cond_1b
    array-length v2, p0

    .line 758
    .local v2, "N":I
    const-string/jumbo v3, "num"

    invoke-interface {p2, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 760
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-ge v3, v2, :cond_38

    .line 761
    const-string v4, "item"

    invoke-interface {p2, v0, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    aget-object v5, p0, v3

    const-string/jumbo v6, "value"

    invoke-interface {p2, v0, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 763
    invoke-interface {p2, v0, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 760
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 766
    .end local v3    # "i":I
    :cond_38
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    return-void
.end method

.method public static greylist-max-o writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1889
    if-eqz p2, :cond_a

    .line 1890
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1892
    :cond_a
    return-void
.end method

.method public static greylist-max-o writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1878
    if-eqz p2, :cond_a

    .line 1879
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1881
    :cond_a
    return-void
.end method

.method public static final blacklist writeValueXml(Ljava/lang/Object;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .registers 4
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 832
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Landroid/util/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 833
    return-void
.end method

.method private static final blacklist writeValueXml(Ljava/lang/Object;Ljava/lang/String;Landroid/util/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V
    .registers 11
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .param p3, "callback"    # Lcom/android/internal/util/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    if-nez p0, :cond_15

    .line 855
    const-string/jumbo v2, "null"

    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 856
    if-eqz p1, :cond_11

    .line 857
    invoke-interface {p2, v1, v0, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 859
    :cond_11
    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 860
    return-void

    .line 861
    :cond_15
    instance-of v2, p0, Ljava/lang/String;

    const-string/jumbo v3, "string"

    if-eqz v2, :cond_2f

    .line 862
    invoke-interface {p2, v1, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 863
    if-eqz p1, :cond_24

    .line 864
    invoke-interface {p2, v1, v0, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 866
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 867
    invoke-interface {p2, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 868
    return-void

    .line 869
    :cond_2f
    instance-of v2, p0, Ljava/lang/Integer;

    const-string/jumbo v4, "value"

    if-eqz v2, :cond_4f

    .line 870
    const-string v2, "int"

    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 871
    if-eqz p1, :cond_40

    .line 872
    invoke-interface {p2, v1, v0, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 874
    :cond_40
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v4, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_bf

    .line 876
    :cond_4f
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_6c

    .line 877
    const-string/jumbo v2, "long"

    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 878
    if-eqz p1, :cond_5e

    .line 879
    invoke-interface {p2, v1, v0, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 881
    :cond_5e
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {p2, v1, v4, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 882
    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_bf

    .line 883
    :cond_6c
    instance-of v2, p0, Ljava/lang/Float;

    if-eqz v2, :cond_88

    .line 884
    const-string v2, "float"

    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 885
    if-eqz p1, :cond_7a

    .line 886
    invoke-interface {p2, v1, v0, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    :cond_7a
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v4, v0}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 889
    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_bf

    .line 890
    :cond_88
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_a4

    .line 891
    const-string v2, "double"

    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 892
    if-eqz p1, :cond_96

    .line 893
    invoke-interface {p2, v1, v0, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 895
    :cond_96
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {p2, v1, v4, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_bf

    .line 897
    :cond_a4
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_c0

    .line 898
    const-string v2, "boolean"

    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 899
    if-eqz p1, :cond_b2

    .line 900
    invoke-interface {p2, v1, v0, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 902
    :cond_b2
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v1, v4, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 903
    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 948
    :goto_bf
    return-void

    .line 904
    :cond_c0
    instance-of v2, p0, [B

    if-eqz v2, :cond_cb

    .line 905
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeByteArrayXml([BLjava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 906
    return-void

    .line 907
    :cond_cb
    instance-of v2, p0, [I

    if-eqz v2, :cond_d6

    .line 908
    move-object v0, p0

    check-cast v0, [I

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeIntArrayXml([ILjava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 909
    return-void

    .line 910
    :cond_d6
    instance-of v2, p0, [J

    if-eqz v2, :cond_e1

    .line 911
    move-object v0, p0

    check-cast v0, [J

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeLongArrayXml([JLjava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 912
    return-void

    .line 913
    :cond_e1
    instance-of v2, p0, [D

    if-eqz v2, :cond_ec

    .line 914
    move-object v0, p0

    check-cast v0, [D

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeDoubleArrayXml([DLjava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 915
    return-void

    .line 916
    :cond_ec
    instance-of v2, p0, [Ljava/lang/String;

    if-eqz v2, :cond_f7

    .line 917
    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 918
    return-void

    .line 919
    :cond_f7
    instance-of v2, p0, [Z

    if-eqz v2, :cond_102

    .line 920
    move-object v0, p0

    check-cast v0, [Z

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeBooleanArrayXml([ZLjava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 921
    return-void

    .line 922
    :cond_102
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_10d

    .line 923
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 924
    return-void

    .line 925
    :cond_10d
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_118

    .line 926
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 927
    return-void

    .line 928
    :cond_118
    instance-of v2, p0, Ljava/util/Set;

    if-eqz v2, :cond_123

    .line 929
    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/XmlUtils;->writeSetXml(Ljava/util/Set;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 930
    return-void

    .line 931
    :cond_123
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_13a

    .line 935
    invoke-interface {p2, v1, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 936
    if-eqz p1, :cond_12f

    .line 937
    invoke-interface {p2, v1, v0, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 939
    :cond_12f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 940
    invoke-interface {p2, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 941
    return-void

    .line 942
    :cond_13a
    if-eqz p3, :cond_140

    .line 943
    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/util/XmlUtils$WriteMapCallback;->writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 944
    return-void

    .line 946
    :cond_140
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeValueXml: unable to write value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final greylist-max-o writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 811
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 812
    return-void
.end method
