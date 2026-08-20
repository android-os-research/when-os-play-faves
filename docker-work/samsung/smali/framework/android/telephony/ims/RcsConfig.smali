.class public final Landroid/telephony/ims/RcsConfig;
.super Ljava/lang/Object;
.source "RcsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsConfig$Characteristic;
    }
.end annotation


# static fields
.field private static final blacklist ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final blacklist ATTRIBUTE_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field private static final blacklist DBG:Z

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RcsConfig"

.field private static final blacklist PARM_SINGLE_REGISTRATION:Ljava/lang/String; = "rcsVolteSingleRegistration"

.field private static final blacklist TAG_CHARACTERISTIC:Ljava/lang/String; = "characteristic"

.field private static final blacklist TAG_PARM:Ljava/lang/String; = "parm"


# instance fields
.field private blacklist mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

.field private final blacklist mData:[B

.field private final blacklist mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Landroid/telephony/ims/RcsConfig;->DBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/telephony/ims/RcsConfig;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 18
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 173
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "error to close input stream, skip."

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    if-eqz v2, :cond_13b

    array-length v0, v2

    if-eqz v0, :cond_13b

    .line 177
    new-instance v0, Landroid/telephony/ims/RcsConfig$Characteristic;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v4}, Landroid/telephony/ims/RcsConfig$Characteristic;-><init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;Landroid/telephony/ims/RcsConfig$Characteristic-IA;)V

    iput-object v0, v1, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 178
    iput-object v0, v1, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 179
    iput-object v2, v1, Landroid/telephony/ims/RcsConfig;->mData:[B

    .line 180
    iget-object v5, v1, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 181
    .local v5, "current":Landroid/telephony/ims/RcsConfig$Characteristic;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v6, v0

    .line 183
    .local v6, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_22
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 184
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 185
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 186
    .local v8, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 187
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_35} :catch_129
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_35} :catch_129
    .catchall {:try_start_22 .. :try_end_35} :catchall_126

    .line 188
    .local v9, "eventType":I
    const/4 v10, 0x0

    .line 189
    .local v10, "tag":Ljava/lang/String;
    :goto_36
    if-eq v9, v7, :cond_11a

    if-eqz v5, :cond_11a

    .line 190
    const/4 v11, 0x2

    const-string v12, "characteristic"

    if-ne v9, v11, :cond_f6

    .line 191
    :try_start_3f
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 192
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_95

    .line 193
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    .line 194
    .local v11, "count":I
    const/4 v12, 0x0

    .line 195
    .local v12, "type":Ljava/lang/String;
    if-lez v11, :cond_86

    .line 196
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5a
    if-ge v13, v11, :cond_86

    .line 197
    invoke-interface {v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 198
    .local v14, "name":Ljava/lang/String;
    const-string/jumbo v15, "type"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_83

    .line 199
    invoke-interface {v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 200
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 201
    goto :goto_86

    .line 196
    .end local v14    # "name":Ljava/lang/String;
    :cond_83
    add-int/lit8 v13, v13, 0x1

    goto :goto_5a

    .line 205
    .end local v13    # "i":I
    :cond_86
    :goto_86
    new-instance v13, Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-direct {v13, v12, v5, v4}, Landroid/telephony/ims/RcsConfig$Characteristic;-><init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;Landroid/telephony/ims/RcsConfig$Characteristic-IA;)V

    .line 206
    .local v13, "next":Landroid/telephony/ims/RcsConfig$Characteristic;
    invoke-static {v5}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetSubs(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    move-object v5, v13

    .line 208
    .end local v11    # "count":I
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "next":Landroid/telephony/ims/RcsConfig$Characteristic;
    :cond_93
    goto/16 :goto_112

    :cond_95
    const-string/jumbo v11, "parm"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_93

    .line 209
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    .line 210
    .restart local v11    # "count":I
    const/4 v12, 0x0

    .line 211
    .local v12, "key":Ljava/lang/String;
    const/4 v13, 0x0

    .line 212
    .local v13, "value":Ljava/lang/String;
    if-le v11, v7, :cond_ea

    .line 213
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a7
    if-ge v14, v11, :cond_ea

    .line 214
    invoke-interface {v8, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 215
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v4, "name"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 216
    invoke-interface {v8, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_e6

    .line 218
    :cond_d0
    const-string/jumbo v4, "value"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 219
    invoke-interface {v8, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .line 213
    .end local v15    # "name":Ljava/lang/String;
    :cond_e6
    :goto_e6
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_a7

    .line 224
    .end local v14    # "i":I
    :cond_ea
    if-eqz v12, :cond_f5

    if-eqz v13, :cond_f5

    .line 225
    invoke-static {v5}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetParms(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v11    # "count":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_f5
    goto :goto_112

    .line 228
    :cond_f6
    const/4 v4, 0x3

    if-ne v9, v4, :cond_112

    .line 229
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 230
    .end local v10    # "tag":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_110

    .line 231
    invoke-static {v5}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetParent(Landroid/telephony/ims/RcsConfig$Characteristic;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v10

    move-object v5, v10

    .line 233
    :cond_110
    const/4 v4, 0x0

    move-object v10, v4

    .line 235
    .end local v4    # "tag":Ljava/lang/String;
    .restart local v10    # "tag":Ljava/lang/String;
    :cond_112
    :goto_112
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_116} :catch_129
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_116} :catch_129
    .catchall {:try_start_3f .. :try_end_116} :catchall_126

    move v9, v4

    const/4 v4, 0x0

    goto/16 :goto_36

    .line 241
    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "eventType":I
    .end local v10    # "tag":Ljava/lang/String;
    :cond_11a
    :try_start_11a
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11e

    .line 244
    goto :goto_125

    .line 242
    :catch_11e
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 243
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3}, Landroid/telephony/ims/RcsConfig;->loge(Ljava/lang/String;)V

    .line 245
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 246
    :goto_125
    return-void

    .line 240
    :catchall_126
    move-exception v0

    move-object v4, v0

    goto :goto_130

    .line 237
    :catch_129
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v5    # "current":Landroid/telephony/ims/RcsConfig$Characteristic;
    .end local v6    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Landroid/telephony/ims/RcsConfig;
    .end local p1    # "data":[B
    throw v4
    :try_end_130
    .catchall {:try_start_12a .. :try_end_130} :catchall_126

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "current":Landroid/telephony/ims/RcsConfig$Characteristic;
    .restart local v6    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Landroid/telephony/ims/RcsConfig;
    .restart local p1    # "data":[B
    :goto_130
    :try_start_130
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_134

    .line 244
    goto :goto_13a

    .line 242
    :catch_134
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 243
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3}, Landroid/telephony/ims/RcsConfig;->loge(Ljava/lang/String;)V

    .line 245
    .end local v0    # "e":Ljava/io/IOException;
    :goto_13a
    throw v4

    .line 175
    .end local v5    # "current":Landroid/telephony/ims/RcsConfig$Characteristic;
    .end local v6    # "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_13b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Empty data"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist compressGzip([B)[B
    .registers 5
    .param p0, "data"    # [B

    .line 398
    if-eqz p0, :cond_39

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_39

    .line 401
    :cond_6
    const/4 v0, 0x0

    .line 403
    .local v0, "out":[B
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 404
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 406
    .local v2, "gzipCompressingStream":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 407
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 408
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object v0, v3

    .line 409
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_20} :catch_21

    .line 412
    .end local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzipCompressingStream":Ljava/util/zip/GZIPOutputStream;
    goto :goto_38

    .line 410
    :catch_21
    move-exception v1

    .line 411
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error to compressGzip due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/RcsConfig;->loge(Ljava/lang/String;)V

    .line 413
    .end local v1    # "e":Ljava/io/IOException;
    :goto_38
    return-object v0

    .line 399
    .end local v0    # "out":[B
    :cond_39
    :goto_39
    return-object p0
.end method

.method public static blacklist decompressGzip([B)[B
    .registers 8
    .param p0, "data"    # [B

    .line 420
    if-eqz p0, :cond_51

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_51

    .line 423
    :cond_6
    const/4 v0, 0x0

    .line 425
    .local v0, "out":[B
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 426
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 429
    .local v3, "gzipDecompressingStream":Ljava/util/zip/GZIPInputStream;
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 430
    .local v4, "buf":[B
    invoke-virtual {v3, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    .line 431
    .local v5, "size":I
    :goto_1e
    if-ltz v5, :cond_2a

    .line 432
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 433
    invoke-virtual {v3, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v6

    move v5, v6

    goto :goto_1e

    .line 435
    :cond_2a
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 436
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 437
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-object v0, v6

    .line 438
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_38} :catch_39

    .line 441
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gzipDecompressingStream":Ljava/util/zip/GZIPInputStream;
    .end local v4    # "buf":[B
    .end local v5    # "size":I
    goto :goto_50

    .line 439
    :catch_39
    move-exception v1

    .line 440
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error to decompressGzip due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/RcsConfig;->loge(Ljava/lang/String;)V

    .line 442
    .end local v1    # "e":Ljava/io/IOException;
    :goto_50
    return-object v0

    .line 421
    .end local v0    # "out":[B
    :cond_51
    :goto_51
    return-object p0
.end method

.method public static blacklist loadRcsConfigForSub(Landroid/content/Context;IZ)[B
    .registers 10
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "isCompressed"    # Z

    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, "data":[B
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 469
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_65

    :try_start_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 470
    const-string/jumbo v2, "rcs_config"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_34} :catch_38
    .catchall {:try_start_23 .. :try_end_34} :catchall_36

    move-object v0, v2

    goto :goto_65

    .line 475
    :catchall_36
    move-exception v2

    goto :goto_5f

    .line 472
    :catch_38
    move-exception v2

    .line 473
    .local v2, "e":Ljava/lang/Exception;
    :try_start_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error to load rcs config for sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/RcsConfig;->loge(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_39 .. :try_end_59} :catchall_36

    .line 475
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_68

    .line 476
    :goto_5b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_68

    .line 475
    :goto_5f
    if-eqz v1, :cond_64

    .line 476
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_64
    throw v2

    .line 475
    :cond_65
    :goto_65
    if-eqz v1, :cond_68

    .line 476
    goto :goto_5b

    .line 479
    :cond_68
    :goto_68
    if-eqz p2, :cond_6c

    move-object v2, v0

    goto :goto_70

    :cond_6c
    invoke-static {v0}, Landroid/telephony/ims/RcsConfig;->decompressGzip([B)[B

    move-result-object v2

    :goto_70
    return-object v2
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 483
    const-string v0, "RcsConfig"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 487
    const-string v0, "RcsConfig"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method

.method public static blacklist updateConfigForSub(Landroid/content/Context;I[BZ)V
    .registers 10
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "config"    # [B
    .param p3, "isCompressed"    # Z

    .line 451
    if-eqz p3, :cond_4

    move-object v0, p2

    goto :goto_8

    :cond_4
    invoke-static {p2}, Landroid/telephony/ims/RcsConfig;->compressGzip([B)[B

    move-result-object v0

    .line 452
    .local v0, "data":[B
    :goto_8
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 453
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "rcs_config"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 456
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 380
    instance-of v0, p1, Landroid/telephony/ims/RcsConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 381
    return v1

    .line 384
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/RcsConfig;

    .line 386
    .local v0, "other":Landroid/telephony/ims/RcsConfig;
    iget-object v2, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {v2, v3}, Landroid/telephony/ims/RcsConfig$Characteristic;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {v2, v3}, Landroid/telephony/ims/RcsConfig$Characteristic;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public blacklist getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Z

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/RcsConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_d

    :cond_c
    move v1, p2

    :goto_d
    return v1
.end method

.method public blacklist getCharacteristic(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetSubByType(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCurrentCharacteristic()Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    return-object v0
.end method

.method public blacklist getInteger(Ljava/lang/String;I)I
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .line 271
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/RcsConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_a

    return v0

    .line 272
    :catch_a
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error to getInteger for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/RcsConfig;->logd(Ljava/lang/String;)V

    .line 275
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public blacklist getRoot()Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 2

    .line 347
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    return-object v0
.end method

.method public blacklist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 257
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetParmValue(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_12

    move-object v1, v0

    goto :goto_13

    :cond_12
    move-object v1, p2

    :goto_13
    return-object v1
.end method

.method public blacklist hasCharacteristic(Ljava/lang/String;)Z
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetSubByType(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist hasConfig(Ljava/lang/String;)Z
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsConfig$Characteristic;->hasParm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 391
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isRcsVolteSingleRegistrationSupported(Z)Z
    .registers 5
    .param p1, "isRoaming"    # Z

    .line 361
    const-string/jumbo v0, "rcsVolteSingleRegistration"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/RcsConfig;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 362
    .local v0, "val":I
    const/4 v2, 0x0

    if-eqz p1, :cond_e

    if-ne v0, v1, :cond_11

    goto :goto_10

    :cond_e
    if-lez v0, :cond_11

    :goto_10
    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method public blacklist moveToParent()Z
    .registers 2

    .line 329
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-static {v0}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetParent(Landroid/telephony/ims/RcsConfig$Characteristic;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    if-nez v0, :cond_a

    .line 330
    const/4 v0, 0x0

    return v0

    .line 332
    :cond_a
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-static {v0}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetParent(Landroid/telephony/ims/RcsConfig$Characteristic;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist moveToRoot()V
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 341
    return-void
.end method

.method public blacklist setCurrentCharacteristic(Landroid/telephony/ims/RcsConfig$Characteristic;)V
    .registers 2
    .param p1, "current"    # Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 320
    if-eqz p1, :cond_4

    .line 321
    iput-object p1, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 323
    :cond_4
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[RCS Config]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    sget-boolean v1, Landroid/telephony/ims/RcsConfig;->DBG:Z

    if-eqz v1, :cond_22

    .line 370
    const-string v1, "=== Root ===\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, "=== Current ===\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
