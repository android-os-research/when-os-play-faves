.class public Lcom/samsung/android/feature/SemCscFeature;
.super Ljava/lang/Object;
.source "SemCscFeature.java"


# static fields
.field private static final blacklist ATTR_COUNTRYISO:Ljava/lang/String; = "countryISO"

.field private static final blacklist TAG:Ljava/lang/String; = "SemCscFeature"

.field private static final blacklist TAG_COUNTRY:Ljava/lang/String; = "Country"

.field private static final blacklist TAG_COUNTRYISO:Ljava/lang/String; = "CountryISO"

.field private static final blacklist TAG_FEATURESET:Ljava/lang/String; = "FeatureSet"

.field private static blacklist bLoadFeaure:Z

.field private static blacklist sInstance:Lcom/samsung/android/feature/SemCscFeature;


# instance fields
.field private final blacklist SALT_LENGTH:I

.field private final blacklist XML_HEADER:Ljava/lang/String;

.field private blacklist mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist salts:[B

.field private final blacklist shifts:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/feature/SemCscFeature;->bLoadFeaure:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 5

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 65
    const-string v0, "<?xml"

    iput-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->XML_HEADER:Ljava/lang/String;

    .line 67
    const/16 v0, 0x100

    iput v0, p0, Lcom/samsung/android/feature/SemCscFeature;->SALT_LENGTH:I

    .line 70
    new-array v1, v0, [B

    fill-array-data v1, :array_3c

    iput-object v1, p0, Lcom/samsung/android/feature/SemCscFeature;->salts:[B

    .line 82
    new-array v0, v0, [B

    fill-array-data v0, :array_c0

    iput-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    .line 183
    :try_start_20
    const-string v0, "mdc.system.path"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "omcPath":Ljava/lang/String;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;Z)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2f} :catch_31

    .line 187
    nop

    .end local v0    # "omcPath":Ljava/lang/String;
    goto :goto_3b

    .line 185
    :catch_31
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemCscFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3b
    return-void

    :array_3c
    .array-data 1
        0x41t
        -0x3bt
        0x21t
        -0x22t
        0x6bt
        0x1ct
        -0x6bt
        0x37t
        0x4et
        0x11t
        -0x51t
        0x6t
        -0x50t
        -0x79t
        -0x23t
        -0x17t
        0x48t
        0x7at
        -0x3ft
        -0x2bt
        0x44t
        0x77t
        -0x4et
        -0x6ft
        -0x3ct
        0x1ft
        0x3ct
        0x39t
        0x5ct
        -0x58t
        -0x64t
        -0x45t
        -0x6at
        0x5bt
        0x45t
        0x5dt
        0x6et
        0x17t
        0x5dt
        0x35t
        -0x2ct
        -0x33t
        0x40t
        -0x50t
        0x2et
        0x2t
        -0x4t
        0xct
        -0x2dt
        0x50t
        -0x2ct
        -0x23t
        -0x6ft
        -0x1ct
        -0x42t
        -0x74t
        0x27t
        0x2t
        -0x1bt
        -0x2dt
        -0x34t
        0x7dt
        0x27t
        0x42t
        -0x5at
        0x3ft
        -0x69t
        -0x43t
        0x54t
        -0x39t
        -0x4t
        -0x4t
        0x65t
        -0x5at
        0x51t
        0xat
        -0x21t
        0x1t
        0x43t
        -0x39t
        -0x47t
        0x12t
        -0x4at
        0x66t
        0x60t
        -0x59t
        0x40t
        -0x11t
        0x36t
        -0x5et
        -0x54t
        -0x42t
        0xet
        0x77t
        0x79t
        0x2t
        -0x4et
        -0x4ft
        0x59t
        0x3ft
        0x5dt
        0x6dt
        -0x4et
        -0x33t
        0x42t
        -0x24t
        0x20t
        0x56t
        0x3t
        -0x3at
        -0xft
        0x5ct
        0x3at
        0x2t
        -0x59t
        -0x50t
        -0xdt
        -0x1t
        0x7at
        -0x4t
        0x30t
        0x3ft
        -0x2ct
        0x3bt
        0x64t
        -0x2at
        -0x2dt
        0x3bt
        -0x7t
        -0x11t
        -0x36t
        0x22t
        -0x36t
        0x47t
        -0x40t
        -0x1at
        -0x57t
        -0x50t
        -0x11t
        -0x2ct
        -0x26t
        -0x70t
        0x46t
        0xat
        -0x6at
        0x5ft
        -0x18t
        -0x4t
        -0x76t
        0x2dt
        -0x55t
        -0xdt
        0x55t
        0x19t
        -0x66t
        -0x77t
        0xdt
        -0x25t
        0x74t
        0x2et
        -0x45t
        0x3bt
        0x2at
        -0x5at
        -0x26t
        -0x69t
        0x65t
        -0x77t
        -0x24t
        0x61t
        -0x3t
        -0x3et
        -0x5bt
        -0x61t
        -0x7dt
        0x11t
        0xet
        0x6at
        -0x48t
        -0x77t
        0x63t
        0x6ft
        0x14t
        0x12t
        -0x1bt
        0x71t
        0x40t
        -0x18t
        0x4at
        -0x3ct
        -0x64t
        0x1at
        0x38t
        -0x2ct
        -0x46t
        0xct
        -0x33t
        -0x64t
        -0x20t
        -0xbt
        0x1at
        0x30t
        -0x75t
        0x62t
        -0x5dt
        0x33t
        -0x19t
        -0x4ft
        -0x1ft
        0x61t
        0x57t
        -0x69t
        -0x40t
        0x7t
        -0xdt
        -0x65t
        0x21t
        -0x7at
        0x5t
        -0x68t
        0x59t
        -0x2ct
        -0x75t
        0x3ft
        -0x50t
        -0x6t
        -0x47t
        -0x6et
        -0x1dt
        -0x69t
        0x74t
        0x6bt
        -0x5dt
        0x5bt
        -0x29t
        -0xdt
        0x14t
        -0x73t
        -0x4et
        0x2bt
        0x4ft
        -0x7at
        0x6t
        0x66t
        -0x20t
        0x34t
        -0x76t
        -0x33t
        0x48t
        -0x68t
        0x29t
        -0x26t
        0x7ct
        0x48t
        -0x7et
        -0x23t
    .end array-data

    :array_c0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x2t
        0x2t
        0x4t
        0x5t
        0x0t
        0x4t
        0x7t
        0x1t
        0x6t
        0x5t
        0x3t
        0x3t
        0x1t
        0x2t
        0x5t
        0x0t
        0x6t
        0x2t
        0x2t
        0x4t
        0x2t
        0x2t
        0x3t
        0x0t
        0x2t
        0x1t
        0x2t
        0x4t
        0x3t
        0x4t
        0x0t
        0x0t
        0x0t
        0x3t
        0x5t
        0x3t
        0x1t
        0x6t
        0x5t
        0x6t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x3t
        0x2t
        0x7t
        0x7t
        0x5t
        0x6t
        0x7t
        0x3t
        0x5t
        0x1t
        0x0t
        0x7t
        0x6t
        0x3t
        0x6t
        0x5t
        0x4t
        0x5t
        0x3t
        0x5t
        0x1t
        0x3t
        0x3t
        0x1t
        0x5t
        0x4t
        0x1t
        0x0t
        0x0t
        0x2t
        0x6t
        0x6t
        0x6t
        0x6t
        0x4t
        0x0t
        0x1t
        0x1t
        0x0t
        0x5t
        0x5t
        0x4t
        0x2t
        0x4t
        0x6t
        0x1t
        0x7t
        0x1t
        0x2t
        0x1t
        0x1t
        0x6t
        0x5t
        0x4t
        0x7t
        0x6t
        0x5t
        0x1t
        0x6t
        0x7t
        0x0t
        0x2t
        0x6t
        0x3t
        0x1t
        0x7t
        0x1t
        0x1t
        0x7t
        0x4t
        0x0t
        0x4t
        0x2t
        0x5t
        0x3t
        0x1t
        0x1t
        0x5t
        0x6t
        0x0t
        0x3t
        0x5t
        0x3t
        0x6t
        0x5t
        0x7t
        0x2t
        0x5t
        0x6t
        0x6t
        0x2t
        0x2t
        0x3t
        0x6t
        0x0t
        0x4t
        0x3t
        0x2t
        0x0t
        0x2t
        0x2t
        0x3t
        0x5t
        0x3t
        0x3t
        0x2t
        0x5t
        0x5t
        0x5t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x4t
        0x5t
        0x1t
        0x6t
        0x2t
        0x4t
        0x7t
        0x1t
        0x4t
        0x6t
        0x0t
        0x6t
        0x4t
        0x3t
        0x2t
        0x6t
        0x1t
        0x6t
        0x3t
        0x2t
        0x1t
        0x6t
        0x7t
        0x3t
        0x2t
        0x1t
        0x1t
        0x5t
        0x6t
        0x7t
        0x2t
        0x2t
        0x2t
        0x7t
        0x4t
        0x6t
        0x7t
        0x5t
        0x3t
        0x1t
        0x4t
        0x2t
        0x7t
        0x1t
        0x6t
        0x2t
        0x4t
        0x1t
        0x5t
        0x6t
        0x5t
        0x4t
        0x5t
        0x0t
        0x1t
        0x1t
        0x6t
        0x3t
        0x7t
        0x2t
        0x0t
        0x2t
        0x5t
        0x0t
        0x1t
        0x3t
        0x3t
        0x2t
        0x6t
        0x7t
        0x7t
        0x2t
        0x5t
        0x6t
        0x0t
        0x4t
        0x1t
        0x2t
        0x5t
        0x3t
        0x7t
        0x6t
        0x5t
        0x2t
        0x5t
        0x2t
        0x0t
        0x1t
        0x3t
        0x1t
        0x4t
        0x3t
        0x4t
        0x2t
    .end array-data
.end method

.method private blacklist _decode([B)[B
    .registers 8
    .param p1, "source"    # [B

    .line 92
    array-length v0, p1

    new-array v0, v0, [B

    .line 93
    .local v0, "results":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_31

    .line 94
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    rem-int/lit16 v4, v1, 0x100

    aget-byte v4, v3, v4

    shl-int/2addr v2, v4

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    rem-int/lit16 v5, v1, 0x100

    aget-byte v3, v3, v5

    rsub-int/lit8 v3, v3, 0x8

    ushr-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 95
    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->salts:[B

    rem-int/lit16 v4, v1, 0x100

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 97
    .end local v1    # "i":I
    :cond_31
    return-object v0
.end method

.method private blacklist _decompressGzip([B)[B
    .registers 10
    .param p1, "sourceGz"    # [B

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 106
    .local v1, "gzIs":Ljava/util/zip/GZIPInputStream;
    const/16 v2, 0x400

    :try_start_4
    new-array v2, v2, [B

    .line 107
    .local v2, "buffer":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 108
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 109
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v3, "resultStream":Ljava/io/ByteArrayOutputStream;
    :goto_1c
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->available()I

    move-result v4

    if-lez v4, :cond_39

    .line 111
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 112
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 113
    .local v5, "len":I
    :goto_28
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v6

    move v5, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_35

    .line 114
    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_28

    .line 116
    :cond_35
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 117
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "len":I
    goto :goto_1c

    .line 118
    :cond_39
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 119
    .local v4, "result":[B
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 120
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 121
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_46} :catch_59
    .catchall {:try_start_4 .. :try_end_46} :catchall_57

    .line 127
    .end local v2    # "buffer":[B
    .end local v3    # "resultStream":Ljava/io/ByteArrayOutputStream;
    nop

    .line 128
    :try_start_47
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 129
    const/4 v1, 0x0

    .line 132
    nop

    .line 133
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4f} :catch_51

    .line 134
    const/4 v0, 0x0

    .line 138
    goto :goto_56

    .line 136
    :catch_51
    move-exception v2

    .line 137
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 139
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 140
    :goto_56
    return-object v4

    .line 126
    .end local v4    # "result":[B
    :catchall_57
    move-exception v2

    goto :goto_74

    .line 122
    :catch_59
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_57

    .line 124
    const/4 v3, 0x0

    .line 127
    if-eqz v1, :cond_67

    .line 128
    :try_start_60
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 129
    const/4 v1, 0x0

    goto :goto_67

    .line 136
    :catch_65
    move-exception v4

    goto :goto_6e

    .line 132
    :cond_67
    :goto_67
    if-eqz v0, :cond_72

    .line 133
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6c} :catch_65

    .line 134
    const/4 v0, 0x0

    goto :goto_72

    .line 137
    .local v4, "e":Ljava/io/IOException;
    :goto_6e
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_73

    .line 138
    .end local v4    # "e":Ljava/io/IOException;
    :cond_72
    :goto_72
    nop

    .line 124
    :goto_73
    return-object v3

    .line 127
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_74
    if-eqz v1, :cond_7d

    .line 128
    :try_start_76
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 129
    const/4 v1, 0x0

    goto :goto_7d

    .line 136
    :catch_7b
    move-exception v3

    goto :goto_84

    .line 132
    :cond_7d
    :goto_7d
    if-eqz v0, :cond_88

    .line 133
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_82} :catch_7b

    .line 134
    const/4 v0, 0x0

    goto :goto_88

    .line 137
    .local v3, "e":Ljava/io/IOException;
    :goto_84
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_89

    .line 138
    .end local v3    # "e":Ljava/io/IOException;
    :cond_88
    :goto_88
    nop

    .line 139
    :goto_89
    throw v2
.end method

.method private blacklist decode([B)[B
    .registers 4
    .param p1, "source"    # [B

    .line 177
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->_decode([B)[B

    move-result-object v0

    .line 178
    .local v0, "decodedGzip":[B
    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->_decompressGzip([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getInstance()Lcom/samsung/android/feature/SemCscFeature;
    .registers 2

    .line 212
    sget-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    if-eqz v0, :cond_8

    sget-boolean v1, Lcom/samsung/android/feature/SemCscFeature;->bLoadFeaure:Z

    if-nez v1, :cond_18

    .line 213
    :cond_8
    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/samsung/android/feature/SemCscFeature;->bLoadFeaure:Z

    if-nez v0, :cond_11

    .line 214
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    .line 217
    :cond_11
    new-instance v0, Lcom/samsung/android/feature/SemCscFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemCscFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    .line 219
    :cond_18
    sget-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    return-object v0
.end method

.method private blacklist isElementWithCountryISO(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 644
    const-string v0, "FeatureSet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Country"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "CountryISO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private blacklist isUseOdmProduct()Z
    .registers 5

    .line 492
    new-instance v0, Ljava/io/File;

    const-string v1, "/odm/etc/omc/SW_Configuration.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v0, "fOdm":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/product/omc/SW_Configuration.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    .local v1, "fProduct":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/prism/etc/SW_Configuration.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v2, "fPrism":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_2a

    .line 499
    :cond_28
    const/4 v3, 0x0

    return v3

    .line 496
    :cond_2a
    :goto_2a
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist isXmlEncoded(Ljava/io/File;)Z
    .registers 7
    .param p1, "featureXmlFile"    # Ljava/io/File;

    .line 144
    const-string v0, "SemCscFeature"

    const/4 v1, 0x0

    .line 147
    .local v1, "ptrRead":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 148
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "headerStr":Ljava/lang/String;
    nop

    .line 151
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 154
    if-eqz v3, :cond_33

    const-string v4, "<?xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_33

    .line 157
    :cond_22
    const-string v4, "Encoded"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_41
    .catchall {:try_start_4 .. :try_end_27} :catchall_3f

    .line 158
    const/4 v0, 0x1

    .line 166
    nop

    .line 167
    :try_start_29
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2e

    .line 168
    const/4 v1, 0x0

    .line 172
    goto :goto_32

    .line 170
    :catch_2e
    move-exception v2

    .line 171
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    .end local v2    # "e":Ljava/io/IOException;
    :goto_32
    return v0

    .line 155
    :cond_33
    :goto_33
    nop

    .line 166
    nop

    .line 167
    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3a

    .line 168
    const/4 v1, 0x0

    .line 172
    goto :goto_3e

    .line 170
    :catch_3a
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3e
    return v2

    .line 165
    .end local v3    # "headerStr":Ljava/lang/String;
    :catchall_3f
    move-exception v0

    goto :goto_56

    .line 161
    :catch_41
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/Exception;
    :try_start_42
    const-string v4, "Exception : isXmlEncoded"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_3f

    .line 163
    nop

    .line 166
    if-eqz v1, :cond_54

    .line 167
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4f

    .line 168
    const/4 v1, 0x0

    goto :goto_54

    .line 170
    :catch_4f
    move-exception v0

    .line 171
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    :cond_54
    :goto_54
    nop

    .line 163
    :goto_55
    return v2

    .line 166
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_56
    if-eqz v1, :cond_62

    .line 167
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5d

    .line 168
    const/4 v1, 0x0

    goto :goto_62

    .line 170
    :catch_5d
    move-exception v2

    .line 171
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    .line 172
    .end local v2    # "e":Ljava/io/IOException;
    :cond_62
    :goto_62
    nop

    .line 173
    :goto_63
    throw v0
.end method

.method private blacklist loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;Z)Z
    .registers 16
    .param p1, "isOmc"    # Z
    .param p2, "targetPath"    # Ljava/lang/String;
    .param p4, "isFeatureForSlot2"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 504
    .local p3, "featureList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "mdc.unified"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "unifiedSalesCode":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 506
    const-string v7, ""

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Z

    move-result v1

    .line 508
    .local v1, "ret":Z
    const-string/jumbo v2, "ro.csc.countryiso_code"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "deviceCountryISO":Ljava/lang/String;
    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Z

    move-result v3

    .line 511
    .local v3, "retCountryISO":Z
    or-int v4, v1, v3

    return v4

    .line 513
    .end local v1    # "ret":Z
    .end local v2    # "deviceCountryISO":Ljava/lang/String;
    .end local v3    # "retCountryISO":Z
    :cond_32
    const-string v10, ""

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private blacklist loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Z
    .registers 27
    .param p1, "isOmc"    # Z
    .param p2, "targetPath"    # Ljava/lang/String;
    .param p4, "isFeatureForSlot2"    # Z
    .param p5, "deviceCountryISO"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 520
    .local p3, "featureList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 521
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 522
    .local v3, "fi":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 523
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, -0x1

    .line 524
    .local v5, "eventType":I
    const/4 v6, 0x0

    .line 525
    .local v6, "TagName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 527
    .local v7, "TagValue":Ljava/lang/String;
    const/4 v8, 0x0

    .line 528
    .local v8, "featurePath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 530
    .local v9, "ret":Z
    const/4 v0, 0x0

    .line 532
    .local v0, "appendFeatureSet":Z
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 533
    const/4 v0, 0x1

    move v10, v0

    goto :goto_15

    .line 532
    :cond_14
    move v10, v0

    .line 536
    .end local v0    # "appendFeatureSet":Z
    .local v10, "appendFeatureSet":Z
    :goto_15
    if-eqz p4, :cond_1b

    const-string/jumbo v0, "slot2 "

    goto :goto_1e

    :cond_1b
    const-string/jumbo v0, "slot1 "

    :goto_1e
    move-object v11, v0

    .line 538
    .local v11, "slotNum":Ljava/lang/String;
    const-string v12, "SemCscFeature"

    if-nez v10, :cond_44

    .line 539
    :try_start_23
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->clear()V
    :try_end_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_26} :catch_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_36
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_2f
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_44

    .line 626
    :catchall_27
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    goto/16 :goto_3a0

    .line 623
    :catch_2f
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    goto/16 :goto_33e

    .line 621
    :catch_36
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    goto/16 :goto_35a

    .line 619
    :catch_3d
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    goto/16 :goto_376

    .line 541
    :cond_44
    :goto_44
    if-eqz p1, :cond_49

    move-object/from16 v0, p2

    goto :goto_4b

    :cond_49
    :try_start_49
    const-string v0, "/system/csc"
    :try_end_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_4b} :catch_36e
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4b} :catch_352
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4b} :catch_336
    .catchall {:try_start_49 .. :try_end_4b} :catchall_32b

    :goto_4b
    move-object v8, v0

    .line 543
    :try_start_4c
    new-instance v0, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/cscfeature.xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_68} :catch_323
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_68} :catch_31b
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_68} :catch_313
    .catchall {:try_start_4c .. :try_end_68} :catchall_309

    const/4 v14, 0x1

    const-wide/16 v15, 0x0

    if-eqz v13, :cond_7d

    :try_start_6d
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v13, v17, v15

    if-gtz v13, :cond_76

    goto :goto_7d

    .line 556
    :cond_76
    if-nez p4, :cond_7a

    .line 557
    sput-boolean v14, Lcom/samsung/android/feature/SemCscFeature;->bLoadFeaure:Z
    :try_end_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_7a} :catch_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_7a} :catch_36
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_7a} :catch_2f
    .catchall {:try_start_6d .. :try_end_7a} :catchall_27

    .line 559
    :cond_7a
    const/4 v9, 0x1

    move-object v13, v0

    goto :goto_d9

    .line 545
    :cond_7d
    :goto_7d
    :try_start_7d
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/feature.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    .line 546
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_9a} :catch_323
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_9a} :catch_31b
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_9a} :catch_313
    .catchall {:try_start_7d .. :try_end_9a} :catchall_309

    if-eqz v13, :cond_a9

    :try_start_9c
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9c .. :try_end_a0} :catch_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_9c .. :try_end_a0} :catch_36
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a0} :catch_2f
    .catchall {:try_start_9c .. :try_end_a0} :catchall_27

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-gtz v13, :cond_a7

    goto :goto_a9

    :cond_a7
    move-object v13, v0

    goto :goto_d9

    .line 547
    :cond_a9
    :goto_a9
    :try_start_a9
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/others.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .end local v0    # "featureXmlFile":Ljava/io/File;
    .local v13, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2cd

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v18, 0x0

    cmp-long v0, v14, v18

    if-gtz v0, :cond_d9

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    goto/16 :goto_2d3

    .line 562
    :cond_d9
    :goto_d9
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v14, v0

    .line 563
    .local v14, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 564
    invoke-virtual {v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v2, v0

    .line 565
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 567
    invoke-direct {v1, v13}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v0
    :try_end_f1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_f1} :catch_323
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_f1} :catch_31b
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_f1} :catch_313
    .catchall {:try_start_a9 .. :try_end_f1} :catchall_309

    if-eqz v0, :cond_160

    .line 568
    :try_start_f3
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 569
    .local v0, "size":I
    new-array v15, v0, [B

    .line 570
    .local v15, "source":[B
    invoke-virtual {v3, v15}, Ljava/io/InputStream;->read([B)I

    .line 571
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 573
    invoke-direct {v1, v15}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v18

    move-object/from16 v19, v18

    .line 574
    .local v19, "result":[B
    move/from16 v18, v0

    .end local v0    # "size":I
    .local v18, "size":I
    new-instance v0, Ljava/io/ByteArrayInputStream;
    :try_end_109
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f3 .. :try_end_109} :catch_157
    .catch Ljava/io/FileNotFoundException; {:try_start_f3 .. :try_end_109} :catch_14e
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_109} :catch_145
    .catchall {:try_start_f3 .. :try_end_109} :catchall_13b

    move/from16 v20, v5

    move-object/from16 v5, v19

    .end local v19    # "result":[B
    .local v5, "result":[B
    .local v20, "eventType":I
    :try_start_10d
    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v0

    .line 576
    const/4 v0, 0x0

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_115
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10d .. :try_end_115} :catch_132
    .catch Ljava/io/FileNotFoundException; {:try_start_10d .. :try_end_115} :catch_129
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_115} :catch_120
    .catchall {:try_start_10d .. :try_end_115} :catchall_116

    .line 577
    .end local v5    # "result":[B
    .end local v15    # "source":[B
    .end local v18    # "size":I
    goto :goto_166

    .line 626
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catchall_116
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v8

    move/from16 v5, v20

    move-object/from16 v8, p3

    goto/16 :goto_3a0

    .line 623
    :catch_120
    move-exception v0

    move-object/from16 v16, v8

    move/from16 v5, v20

    move-object/from16 v8, p3

    goto/16 :goto_33e

    .line 621
    :catch_129
    move-exception v0

    move-object/from16 v16, v8

    move/from16 v5, v20

    move-object/from16 v8, p3

    goto/16 :goto_35a

    .line 619
    :catch_132
    move-exception v0

    move-object/from16 v16, v8

    move/from16 v5, v20

    move-object/from16 v8, p3

    goto/16 :goto_376

    .line 626
    .end local v20    # "eventType":I
    .local v5, "eventType":I
    :catchall_13b
    move-exception v0

    move/from16 v20, v5

    move-object v1, v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .restart local v20    # "eventType":I
    goto/16 :goto_3a0

    .line 623
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    :catch_145
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .restart local v20    # "eventType":I
    goto/16 :goto_33e

    .line 621
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    :catch_14e
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .restart local v20    # "eventType":I
    goto/16 :goto_35a

    .line 619
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    :catch_157
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .restart local v20    # "eventType":I
    goto/16 :goto_376

    .line 578
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_160
    move/from16 v20, v5

    .end local v5    # "eventType":I
    .restart local v20    # "eventType":I
    const/4 v0, 0x0

    :try_start_163
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 581
    :goto_166
    const/4 v0, 0x0

    .line 582
    .local v0, "skipElement":Z
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5
    :try_end_16b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_163 .. :try_end_16b} :catch_2c4
    .catch Ljava/io/FileNotFoundException; {:try_start_163 .. :try_end_16b} :catch_2bb
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_16b} :catch_2b2
    .catchall {:try_start_163 .. :try_end_16b} :catchall_2a8

    move-object v15, v7

    move-object v7, v6

    move v6, v5

    move v5, v0

    .line 583
    .end local v0    # "skipElement":Z
    .end local v20    # "eventType":I
    .local v5, "skipElement":Z
    .local v6, "eventType":I
    .local v7, "TagName":Ljava/lang/String;
    .local v15, "TagValue":Ljava/lang/String;
    :goto_16f
    move-object/from16 v16, v8

    const/4 v8, 0x1

    .end local v8    # "featurePath":Ljava/lang/String;
    .local v16, "featurePath":Ljava/lang/String;
    if-eq v6, v8, :cond_289

    .line 584
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1ba

    .line 585
    if-nez v5, :cond_1a9

    move-object/from16 v8, p5

    :try_start_17b
    invoke-direct {v1, v2, v8, v10}, Lcom/samsung/android/feature/SemCscFeature;->needToSkipElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 587
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 588
    .end local v7    # "TagName":Ljava/lang/String;
    .local v0, "TagName":Ljava/lang/String;
    const/4 v5, 0x1

    move-object v7, v0

    goto :goto_1ab

    .line 626
    .end local v0    # "TagName":Ljava/lang/String;
    .end local v5    # "skipElement":Z
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "TagName":Ljava/lang/String;
    :catchall_188
    move-exception v0

    move-object/from16 v8, p3

    :goto_18b
    move-object v1, v0

    move v5, v6

    move-object v6, v7

    move-object v7, v15

    goto/16 :goto_3a0

    .line 623
    :catch_191
    move-exception v0

    move-object/from16 v8, p3

    :goto_194
    move v5, v6

    move-object v6, v7

    move-object v7, v15

    goto/16 :goto_33e

    .line 621
    :catch_199
    move-exception v0

    move-object/from16 v8, p3

    :goto_19c
    move v5, v6

    move-object v6, v7

    move-object v7, v15

    goto/16 :goto_35a

    .line 619
    :catch_1a1
    move-exception v0

    move-object/from16 v8, p3

    :goto_1a4
    move v5, v6

    move-object v6, v7

    move-object v7, v15

    goto/16 :goto_376

    .line 585
    .restart local v5    # "skipElement":Z
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_1a9
    move-object/from16 v8, p5

    .line 590
    :cond_1ab
    :goto_1ab
    if-nez v5, :cond_1b6

    .line 591
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1b1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17b .. :try_end_1b1} :catch_1a1
    .catch Ljava/io/FileNotFoundException; {:try_start_17b .. :try_end_1b1} :catch_199
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_1b1} :catch_191
    .catchall {:try_start_17b .. :try_end_1b1} :catchall_188

    move-object/from16 v8, p3

    move-object v7, v0

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v0    # "TagName":Ljava/lang/String;
    goto/16 :goto_262

    .line 590
    .end local v0    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :cond_1b6
    move-object/from16 v8, p3

    goto/16 :goto_262

    .line 593
    :cond_1ba
    move-object/from16 v8, p5

    const/4 v0, 0x4

    if-ne v6, v0, :cond_22b

    .line 594
    if-nez v5, :cond_226

    .line 595
    :try_start_1c1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_1c5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c1 .. :try_end_1c5} :catch_21b
    .catch Ljava/io/FileNotFoundException; {:try_start_1c1 .. :try_end_1c5} :catch_210
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c5} :catch_205
    .catchall {:try_start_1c1 .. :try_end_1c5} :catchall_1f9

    move-object v15, v0

    .line 596
    if-eqz v15, :cond_1cd

    .line 597
    :try_start_1c8
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c8 .. :try_end_1cc} :catch_1a1
    .catch Ljava/io/FileNotFoundException; {:try_start_1c8 .. :try_end_1cc} :catch_199
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cc} :catch_191
    .catchall {:try_start_1c8 .. :try_end_1cc} :catchall_188

    move-object v15, v0

    .line 599
    :cond_1cd
    :try_start_1cd
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f3

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1cd .. :try_end_1d7} :catch_21b
    .catch Ljava/io/FileNotFoundException; {:try_start_1cd .. :try_end_1d7} :catch_210
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d7} :catch_205
    .catchall {:try_start_1cd .. :try_end_1d7} :catchall_1f9

    if-nez v0, :cond_1f3

    .line 601
    move-object/from16 v8, p3

    :try_start_1db
    invoke-interface {v8, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1de} :catch_1e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1db .. :try_end_1de} :catch_271
    .catch Ljava/io/FileNotFoundException; {:try_start_1db .. :try_end_1de} :catch_26e
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1de} :catch_286
    .catchall {:try_start_1db .. :try_end_1de} :catchall_26b

    .line 604
    move-object/from16 v18, v7

    goto/16 :goto_260

    .line 602
    :catch_1e2
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 603
    .local v0, "ex":Ljava/lang/Exception;
    move-object/from16 v18, v7

    .end local v7    # "TagName":Ljava/lang/String;
    .local v18, "TagName":Ljava/lang/String;
    :try_start_1e9
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    goto/16 :goto_260

    .line 599
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :cond_1f3
    move-object/from16 v8, p3

    move-object/from16 v18, v7

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto/16 :goto_260

    .line 626
    .end local v5    # "skipElement":Z
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :catchall_1f9
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v18, v7

    move-object v1, v0

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto/16 :goto_3a0

    .line 623
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :catch_205
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v18, v7

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto/16 :goto_33e

    .line 621
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :catch_210
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v18, v7

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto/16 :goto_35a

    .line 619
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :catch_21b
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v18, v7

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto/16 :goto_376

    .line 594
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v5    # "skipElement":Z
    .restart local v7    # "TagName":Ljava/lang/String;
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_226
    move-object/from16 v8, p3

    move-object/from16 v18, v7

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto :goto_260

    .line 607
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :cond_22b
    move-object/from16 v8, p3

    move-object/from16 v18, v7

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    const/4 v0, 0x3

    if-ne v6, v0, :cond_260

    .line 608
    if-eqz v5, :cond_260

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/feature/SemCscFeature;->isElementWithCountryISO(Ljava/lang/String;)Z

    move-result v0
    :try_end_23c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e9 .. :try_end_23c} :catch_259
    .catch Ljava/io/FileNotFoundException; {:try_start_1e9 .. :try_end_23c} :catch_252
    .catch Ljava/io/IOException; {:try_start_1e9 .. :try_end_23c} :catch_24b
    .catchall {:try_start_1e9 .. :try_end_23c} :catchall_243

    if-eqz v0, :cond_260

    .line 609
    const/4 v0, 0x0

    move v5, v0

    move-object/from16 v7, v18

    .end local v5    # "skipElement":Z
    .local v0, "skipElement":Z
    goto :goto_262

    .line 626
    .end local v0    # "skipElement":Z
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catchall_243
    move-exception v0

    move-object v1, v0

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    goto/16 :goto_3a0

    .line 623
    :catch_24b
    move-exception v0

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    goto/16 :goto_33e

    .line 621
    :catch_252
    move-exception v0

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    goto/16 :goto_35a

    .line 619
    :catch_259
    move-exception v0

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    goto/16 :goto_376

    .line 614
    .restart local v5    # "skipElement":Z
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_260
    :goto_260
    move-object/from16 v7, v18

    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :goto_262
    :try_start_262
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_266
    .catch Ljava/io/IOException; {:try_start_262 .. :try_end_266} :catch_274
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_262 .. :try_end_266} :catch_271
    .catch Ljava/io/FileNotFoundException; {:try_start_262 .. :try_end_266} :catch_26e
    .catchall {:try_start_262 .. :try_end_266} :catchall_26b

    move v6, v0

    .line 617
    move-object/from16 v8, v16

    goto/16 :goto_16f

    .line 626
    .end local v5    # "skipElement":Z
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catchall_26b
    move-exception v0

    goto/16 :goto_18b

    .line 621
    :catch_26e
    move-exception v0

    goto/16 :goto_19c

    .line 619
    :catch_271
    move-exception v0

    goto/16 :goto_1a4

    .line 615
    .restart local v5    # "skipElement":Z
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_274
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 616
    .local v0, "e":Ljava/io/IOException;
    :try_start_279
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_280
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_279 .. :try_end_280} :catch_271
    .catch Ljava/io/FileNotFoundException; {:try_start_279 .. :try_end_280} :catch_26e
    .catch Ljava/io/IOException; {:try_start_279 .. :try_end_280} :catch_286
    .catchall {:try_start_279 .. :try_end_280} :catchall_26b

    .line 617
    move-object/from16 v1, p0

    move-object/from16 v8, v16

    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_16f

    .line 623
    .end local v5    # "skipElement":Z
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_286
    move-exception v0

    goto/16 :goto_194

    .line 583
    .restart local v5    # "skipElement":Z
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_289
    move-object/from16 v8, p3

    move-object/from16 v18, v7

    .line 627
    .end local v5    # "skipElement":Z
    .end local v7    # "TagName":Ljava/lang/String;
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v18    # "TagName":Ljava/lang/String;
    nop

    .line 628
    :try_start_28e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 629
    const/4 v3, 0x0

    .line 632
    if-eqz v4, :cond_298

    .line 633
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_297
    .catch Ljava/io/IOException; {:try_start_28e .. :try_end_297} :catch_29c

    .line 634
    const/4 v4, 0x0

    .line 638
    :cond_298
    move-object/from16 v7, v18

    goto/16 :goto_39d

    .line 636
    :catch_29c
    move-exception v0

    .line 637
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .end local v0    # "e":Ljava/io/IOException;
    move-object/from16 v7, v18

    goto/16 :goto_39d

    .line 626
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v15    # "TagValue":Ljava/lang/String;
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v18    # "TagName":Ljava/lang/String;
    .local v6, "TagName":Ljava/lang/String;
    .local v7, "TagValue":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    :catchall_2a8
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    move-object v1, v0

    move/from16 v5, v20

    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    goto/16 :goto_3a0

    .line 623
    .end local v16    # "featurePath":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_2b2
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    move/from16 v5, v20

    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    goto/16 :goto_33e

    .line 621
    .end local v16    # "featurePath":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_2bb
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    move/from16 v5, v20

    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    goto/16 :goto_35a

    .line 619
    .end local v16    # "featurePath":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_2c4
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    move/from16 v5, v20

    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    goto/16 :goto_376

    .line 548
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .local v5, "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    :cond_2cd
    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .line 549
    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    :goto_2d3
    if-nez p4, :cond_2ee

    .line 550
    const/4 v0, 0x0

    :try_start_2d6
    sput-boolean v0, Lcom/samsung/android/feature/SemCscFeature;->bLoadFeaure:Z
    :try_end_2d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d6 .. :try_end_2d8} :catch_2e9
    .catch Ljava/io/FileNotFoundException; {:try_start_2d6 .. :try_end_2d8} :catch_2e4
    .catch Ljava/io/IOException; {:try_start_2d6 .. :try_end_2d8} :catch_2df
    .catchall {:try_start_2d6 .. :try_end_2d8} :catchall_2d9

    goto :goto_2ee

    .line 626
    .end local v13    # "featureXmlFile":Ljava/io/File;
    :catchall_2d9
    move-exception v0

    move-object v1, v0

    move/from16 v5, v20

    goto/16 :goto_3a0

    .line 623
    :catch_2df
    move-exception v0

    move/from16 v5, v20

    goto/16 :goto_33e

    .line 621
    :catch_2e4
    move-exception v0

    move/from16 v5, v20

    goto/16 :goto_35a

    .line 619
    :catch_2e9
    move-exception v0

    move/from16 v5, v20

    goto/16 :goto_376

    .line 552
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    :cond_2ee
    :goto_2ee
    nop

    .line 627
    if-eqz v3, :cond_2f8

    .line 628
    :try_start_2f1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 629
    const/4 v3, 0x0

    goto :goto_2f8

    .line 636
    :catch_2f6
    move-exception v0

    goto :goto_2ff

    .line 632
    :cond_2f8
    :goto_2f8
    if-eqz v4, :cond_307

    .line 633
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2fd
    .catch Ljava/io/IOException; {:try_start_2f1 .. :try_end_2fd} :catch_2f6

    .line 634
    const/4 v4, 0x0

    goto :goto_307

    .line 637
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2ff
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_308

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :cond_307
    :goto_307
    nop

    .line 552
    :goto_308
    return v9

    .line 626
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catchall_309
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    move-object v1, v0

    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    goto/16 :goto_3a0

    .line 623
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_313
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    goto :goto_33e

    .line 621
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_31b
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    goto :goto_35a

    .line 619
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_323
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    goto :goto_376

    .line 626
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catchall_32b
    move-exception v0

    move/from16 v20, v5

    move-object v1, v8

    move-object/from16 v8, p3

    move-object/from16 v16, v1

    move-object v1, v0

    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .local v1, "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    goto/16 :goto_3a0

    .line 623
    .end local v1    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_336
    move-exception v0

    move/from16 v20, v5

    move-object v1, v8

    move-object/from16 v8, p3

    move-object/from16 v16, v1

    .line 624
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v16    # "featurePath":Ljava/lang/String;
    :goto_33e
    :try_start_33e
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_345
    .catchall {:try_start_33e .. :try_end_345} :catchall_39e

    .line 627
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_34c

    .line 628
    :try_start_347
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 629
    const/4 v0, 0x0

    move-object v3, v0

    .line 632
    :cond_34c
    if-eqz v4, :cond_39a

    .line 633
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_351
    .catch Ljava/io/IOException; {:try_start_347 .. :try_end_351} :catch_385

    goto :goto_38c

    .line 621
    .end local v16    # "featurePath":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_352
    move-exception v0

    move/from16 v20, v5

    move-object v1, v8

    move-object/from16 v8, p3

    move-object/from16 v16, v1

    .line 622
    .end local v8    # "featurePath":Ljava/lang/String;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "featurePath":Ljava/lang/String;
    :goto_35a
    :try_start_35a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_361
    .catchall {:try_start_35a .. :try_end_361} :catchall_39e

    .line 627
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_368

    .line 628
    :try_start_363
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 629
    const/4 v0, 0x0

    move-object v3, v0

    .line 632
    :cond_368
    if-eqz v4, :cond_39a

    .line 633
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_36d
    .catch Ljava/io/IOException; {:try_start_363 .. :try_end_36d} :catch_385

    goto :goto_38c

    .line 619
    .end local v16    # "featurePath":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_36e
    move-exception v0

    move/from16 v20, v5

    move-object v1, v8

    move-object/from16 v8, p3

    move-object/from16 v16, v1

    .line 620
    .end local v8    # "featurePath":Ljava/lang/String;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "featurePath":Ljava/lang/String;
    :goto_376
    :try_start_376
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37d
    .catchall {:try_start_376 .. :try_end_37d} :catchall_39e

    .line 627
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_387

    .line 628
    :try_start_37f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 629
    const/4 v0, 0x0

    move-object v3, v0

    .end local v3    # "fi":Ljava/io/InputStream;
    .local v0, "fi":Ljava/io/InputStream;
    goto :goto_387

    .line 636
    .end local v0    # "fi":Ljava/io/InputStream;
    .restart local v3    # "fi":Ljava/io/InputStream;
    :catch_385
    move-exception v0

    goto :goto_38f

    .line 632
    :cond_387
    :goto_387
    if-eqz v4, :cond_39a

    .line 633
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_38c
    .catch Ljava/io/IOException; {:try_start_37f .. :try_end_38c} :catch_385

    .line 634
    :goto_38c
    const/4 v0, 0x0

    move-object v4, v0

    .end local v4    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_39a

    .line 637
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_38f
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .end local v0    # "e":Ljava/io/IOException;
    move-object v15, v7

    move-object v7, v6

    move v6, v5

    goto :goto_39d

    .line 638
    :cond_39a
    :goto_39a
    move-object v15, v7

    move-object v7, v6

    move v6, v5

    .line 640
    .end local v5    # "eventType":I
    .local v6, "eventType":I
    .local v7, "TagName":Ljava/lang/String;
    .restart local v15    # "TagValue":Ljava/lang/String;
    :goto_39d
    return v9

    .line 626
    .end local v15    # "TagValue":Ljava/lang/String;
    .restart local v5    # "eventType":I
    .local v6, "TagName":Ljava/lang/String;
    .local v7, "TagValue":Ljava/lang/String;
    :catchall_39e
    move-exception v0

    move-object v1, v0

    .line 627
    :goto_3a0
    if-eqz v3, :cond_3a9

    .line 628
    :try_start_3a2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 629
    const/4 v3, 0x0

    goto :goto_3a9

    .line 636
    :catch_3a7
    move-exception v0

    goto :goto_3b0

    .line 632
    :cond_3a9
    :goto_3a9
    if-eqz v4, :cond_3b8

    .line 633
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3ae
    .catch Ljava/io/IOException; {:try_start_3a2 .. :try_end_3ae} :catch_3a7

    .line 634
    const/4 v4, 0x0

    goto :goto_3b8

    .line 637
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3b0
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b9

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3b8
    :goto_3b8
    nop

    .line 639
    :goto_3b9
    throw v1
.end method

.method private blacklist needToSkipElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "deviceCountryISO"    # Ljava/lang/String;
    .param p3, "needCheckCountryIso"    # Z

    .line 649
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "tag":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "countryISO"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, "countryISO":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->isElementWithCountryISO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 653
    if-nez p3, :cond_19

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_19
    if-eqz p3, :cond_22

    .line 654
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_24

    .line 656
    :cond_22
    const/4 v2, 0x1

    return v2

    .line 659
    :cond_24
    :goto_24
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public whitelist getBoolean(ILjava/lang/String;)Z
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 389
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist getBoolean(ILjava/lang/String;Z)Z
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 403
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getBoolean(Ljava/lang/String;)Z
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 233
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    return v0

    .line 235
    :cond_10
    return v0

    .line 237
    .end local v1    # "value":Ljava/lang/String;
    :catch_11
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 255
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 257
    :cond_f
    return p2

    .line 259
    .end local v0    # "value":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public whitelist getInt(ILjava/lang/String;)I
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 459
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getInt(ILjava/lang/String;I)I
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 488
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 332
    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 333
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    return v0

    .line 336
    :cond_10
    return v0

    .line 338
    .end local v1    # "value":Ljava/lang/String;
    :catch_11
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 370
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 372
    :cond_f
    return p2

    .line 374
    .end local v0    # "value":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public blacklist getInteger(ILjava/lang/String;)I
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(ILjava/lang/String;I)I
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 474
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 319
    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(Ljava/lang/String;I)I
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getString(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 417
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 432
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 275
    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_e

    .line 276
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 277
    return-object v1

    .line 279
    :cond_d
    return-object v0

    .line 281
    .end local v1    # "value":Ljava/lang/String;
    :catch_e
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_c

    .line 299
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 300
    return-object v0

    .line 302
    :cond_b
    return-object p2

    .line 304
    .end local v0    # "value":Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public blacklist tracer(I)Ljava/util/Hashtable;
    .registers 4
    .param p1, "tableNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    const-string v0, "SemCscFeature"

    if-nez p1, :cond_c

    .line 195
    const-string v1, "mFeatureList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    return-object v0

    .line 197
    :cond_c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    .line 198
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    return-object v0

    .line 200
    :cond_12
    const-string v1, "Invalid feature table number"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method
