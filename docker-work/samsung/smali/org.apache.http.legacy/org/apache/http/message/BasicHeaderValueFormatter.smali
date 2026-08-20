.class public Lorg/apache/http/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

# interfaces
.implements Lorg/apache/http/message/HeaderValueFormatter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatElements([Lorg/apache/http/HeaderElement;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4
    .param p0, "elems"    # [Lorg/apache/http/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .line 105
    if-nez p2, :cond_4

    .line 106
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 107
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatElements(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatHeaderElement(Lorg/apache/http/HeaderElement;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4
    .param p0, "elem"    # Lorg/apache/http/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .line 174
    if-nez p2, :cond_4

    .line 175
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 176
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatNameValuePair(Lorg/apache/http/NameValuePair;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4
    .param p0, "nvp"    # Lorg/apache/http/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .line 330
    if-nez p2, :cond_4

    .line 331
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 332
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatParameters([Lorg/apache/http/NameValuePair;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4
    .param p0, "nvps"    # [Lorg/apache/http/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .line 262
    if-nez p2, :cond_4

    .line 263
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 264
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "quote"    # Z

    .line 398
    if-nez p3, :cond_16

    .line 399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    if-nez p3, :cond_16

    .line 400
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicHeaderValueFormatter;->isSeparator(C)Z

    move-result p3

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 404
    .end local v0    # "i":I
    :cond_16
    const/16 v0, 0x22

    if-eqz p3, :cond_1d

    .line 405
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 407
    :cond_1d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 408
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 409
    .local v2, "ch":C
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->isUnsafe(C)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 410
    const/16 v3, 0x5c

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 412
    :cond_33
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 407
    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 414
    .end local v1    # "i":I
    :cond_39
    if-eqz p3, :cond_3e

    .line 415
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 417
    :cond_3e
    return-void
.end method

.method protected estimateElementsLen([Lorg/apache/http/HeaderElement;)I
    .registers 5
    .param p1, "elems"    # [Lorg/apache/http/HeaderElement;

    .line 146
    if-eqz p1, :cond_1a

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_1a

    .line 149
    :cond_7
    array-length v0, p1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 150
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 151
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I

    move-result v2

    add-int/2addr v0, v2

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 154
    .end local v1    # "i":I
    :cond_19
    return v0

    .line 147
    .end local v0    # "result":I
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method protected estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I
    .registers 7
    .param p1, "elem"    # Lorg/apache/http/HeaderElement;

    .line 223
    if-nez p1, :cond_4

    .line 224
    const/4 v0, 0x0

    return v0

    .line 226
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 227
    .local v0, "result":I
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 230
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    .line 233
    :cond_19
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    move-result v2

    .line 234
    .local v2, "parcnt":I
    if-lez v2, :cond_31

    .line 235
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v2, :cond_31

    .line 236
    nop

    .line 237
    invoke-interface {p1, v3}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 241
    .end local v3    # "i":I
    :cond_31
    return v0
.end method

.method protected estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I
    .registers 5
    .param p1, "nvp"    # Lorg/apache/http/NameValuePair;

    .line 371
    if-nez p1, :cond_4

    .line 372
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 375
    .local v0, "result":I
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 378
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    .line 380
    :cond_19
    return v0
.end method

.method protected estimateParametersLen([Lorg/apache/http/NameValuePair;)I
    .registers 5
    .param p1, "nvps"    # [Lorg/apache/http/NameValuePair;

    .line 303
    if-eqz p1, :cond_1a

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_1a

    .line 306
    :cond_7
    array-length v0, p1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 307
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 308
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v2

    add-int/2addr v0, v2

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 311
    .end local v1    # "i":I
    :cond_19
    return v0

    .line 304
    .end local v0    # "result":I
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public formatElements(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "elems"    # [Lorg/apache/http/HeaderElement;
    .param p3, "quote"    # Z

    .line 115
    if-eqz p2, :cond_26

    .line 120
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateElementsLen([Lorg/apache/http/HeaderElement;)I

    move-result v0

    .line 121
    .local v0, "len":I
    if-nez p1, :cond_f

    .line 122
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    move-object p1, v1

    goto :goto_12

    .line 124
    :cond_f
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 127
    :goto_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v2, p2

    if-ge v1, v2, :cond_25

    .line 128
    if-lez v1, :cond_1d

    .line 129
    const-string v2, ", "

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 131
    :cond_1d
    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 134
    .end local v1    # "i":I
    :cond_25
    return-object p1

    .line 116
    .end local v0    # "len":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header element array must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 9
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "elem"    # Lorg/apache/http/HeaderElement;
    .param p3, "quote"    # Z

    .line 184
    if-eqz p2, :cond_40

    .line 189
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I

    move-result v0

    .line 190
    .local v0, "len":I
    if-nez p1, :cond_f

    .line 191
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    move-object p1, v1

    goto :goto_12

    .line 193
    :cond_f
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 196
    :goto_12
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 197
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 199
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 200
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 203
    :cond_27
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    move-result v2

    .line 204
    .local v2, "parcnt":I
    if-lez v2, :cond_3f

    .line 205
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v2, :cond_3f

    .line 206
    const-string v4, "; "

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 207
    invoke-interface {p2, v3}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 211
    .end local v3    # "i":I
    :cond_3f
    return-object p1

    .line 185
    .end local v0    # "len":I
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "parcnt":I
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header element must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "nvp"    # Lorg/apache/http/NameValuePair;
    .param p3, "quote"    # Z

    .line 340
    if-eqz p2, :cond_28

    .line 345
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v0

    .line 346
    .local v0, "len":I
    if-nez p1, :cond_f

    .line 347
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    move-object p1, v1

    goto :goto_12

    .line 349
    :cond_f
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 352
    :goto_12
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 353
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 355
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 356
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 359
    :cond_27
    return-object p1

    .line 341
    .end local v0    # "len":I
    .end local v1    # "value":Ljava/lang/String;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NameValuePair must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "nvps"    # [Lorg/apache/http/NameValuePair;
    .param p3, "quote"    # Z

    .line 272
    if-eqz p2, :cond_26

    .line 277
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateParametersLen([Lorg/apache/http/NameValuePair;)I

    move-result v0

    .line 278
    .local v0, "len":I
    if-nez p1, :cond_f

    .line 279
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    move-object p1, v1

    goto :goto_12

    .line 281
    :cond_f
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 284
    :goto_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v2, p2

    if-ge v1, v2, :cond_25

    .line 285
    if-lez v1, :cond_1d

    .line 286
    const-string v2, "; "

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 288
    :cond_1d
    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 291
    .end local v1    # "i":I
    :cond_25
    return-object p1

    .line 273
    .end local v0    # "len":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isSeparator(C)Z
    .registers 3
    .param p1, "ch"    # C

    .line 429
    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected isUnsafe(C)Z
    .registers 3
    .param p1, "ch"    # C

    .line 442
    const-string v0, "\"\\"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
