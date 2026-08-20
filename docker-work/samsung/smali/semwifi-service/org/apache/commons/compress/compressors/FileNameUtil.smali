.class public Lorg/apache/commons/compress/compressors/FileNameUtil;
.super Ljava/lang/Object;
.source "FileNameUtil.java"


# instance fields
.field private final compressSuffix:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultExtension:Ljava/lang/String;

.field private final longestCompressedSuffix:I

.field private final longestUncompressedSuffix:I

.field private final shortestCompressedSuffix:I

.field private final shortestUncompressedSuffix:I

.field private final uncompressSuffix:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->compressSuffix:Ljava/util/Map;

    .line 93
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->uncompressSuffix:Ljava/util/Map;

    .line 96
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    move v2, v1

    move v3, v2

    move v1, v0

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_39

    move v2, v5

    :cond_39
    if-ge v5, v0, :cond_3c

    move v0, v5

    .line 105
    :cond_3c
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 106
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_20

    .line 108
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->compressSuffix:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    .line 109
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->compressSuffix:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    if-le v6, v3, :cond_5e

    move v3, v6

    :cond_5e
    if-ge v6, v1, :cond_20

    move v1, v6

    goto :goto_20

    .line 119
    :cond_62
    iput v2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->longestCompressedSuffix:I

    .line 120
    iput v3, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->longestUncompressedSuffix:I

    .line 121
    iput v0, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->shortestCompressedSuffix:I

    .line 122
    iput v1, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->shortestUncompressedSuffix:I

    .line 123
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->defaultExtension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 183
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 185
    iget v2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->shortestUncompressedSuffix:I

    .line 186
    :goto_c
    iget v3, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->longestUncompressedSuffix:I

    if-gt v2, v3, :cond_3a

    if-ge v2, v1, :cond_3a

    .line 187
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->compressSuffix:Ljava/util/Map;

    sub-int v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_37

    .line 189
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 193
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->defaultExtension:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUncompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 159
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 161
    iget v2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->shortestCompressedSuffix:I

    .line 162
    :goto_c
    iget v3, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->longestCompressedSuffix:I

    if-gt v2, v3, :cond_3a

    if-ge v2, v1, :cond_3a

    .line 163
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->uncompressSuffix:Ljava/util/Map;

    sub-int v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_37

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_3a
    return-object p1
.end method

.method public isCompressedFilename(Ljava/lang/String;)Z
    .registers 6

    .line 134
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 136
    iget v1, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->shortestCompressedSuffix:I

    .line 137
    :goto_c
    iget v2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->longestCompressedSuffix:I

    if-gt v1, v2, :cond_25

    if-ge v1, v0, :cond_25

    .line 138
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->uncompressSuffix:Ljava/util/Map;

    sub-int v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_25
    const/4 p0, 0x0

    return p0
.end method
