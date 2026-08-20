.class public Lcom/samsung/android/transcode/util/NalUnitParser;
.super Ljava/lang/Object;
.source "NalUnitParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;,
        Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    }
.end annotation


# static fields
.field private static final blacklist CHECK_MAX_SIZE:I = 0x200

.field private static final blacklist CLLI_SEI_MESSAGE_PAYLOAD_SIZE:I = 0x4

.field private static final blacklist CLLI_SEI_MESSAGE_PAYLOAD_TYPE:I = 0x90

.field private static final blacklist CONTENT_LIGHT_LEVEL_INFO_META:Ljava/lang/String; = "Content light level info meta"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MASTERING_DISPLAY_COLOR_META:Ljava/lang/String; = "Mastering display color meta"

.field private static final blacklist MDCV_SEI_MESSAGE_PAYLOAD_SIZE:I = 0x18

.field private static final blacklist MDCV_SEI_MESSAGE_PAYLOAD_TYPE:I = 0x89

.field private static final blacklist NAL_START_CODE:[B

.field private static final blacklist STREAM_DUMP_PATH:Ljava/lang/String; = "/data/data/com.samsung.app.newtrim/files/inputStream.bin"

.field private static final blacklist TAG:Ljava/lang/String; = "NalUnitParser"


# instance fields
.field private blacklist mBuffer:[B

.field private final blacklist mBufferSize:I

.field private blacklist mContentsLevelInfoMetaStartPos:I

.field private blacklist mHdrStaticMeta:Ljava/nio/ByteBuffer;

.field private blacklist mMasteringDisplayColorMetaStartPos:I

.field private final blacklist mNalStartPos:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    .line 28
    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 80
    .local v0, "orgPosition":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input buffer size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NalUnitParser"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x200

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    .line 82
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    .line 83
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    .line 97
    return-void
.end method

.method private blacklist findContentLightLevel()Z
    .registers 4

    .line 247
    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    .line 248
    .local v0, "index":I
    :goto_2
    add-int/lit8 v1, v0, 0x7

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v1, v2, :cond_20

    .line 249
    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 250
    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    .line 251
    add-int/lit8 v0, v0, 0x4

    .line 252
    add-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/util/NalUnitParser;->isContentLightLevelInfo(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 254
    return v2

    .line 257
    :cond_1e
    add-int/2addr v0, v2

    goto :goto_2

    .line 259
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist findContentLightLevelWithinDisplayMasteringNal(I)Z
    .registers 5
    .param p1, "startIndex"    # I

    .line 236
    move v0, p1

    .line 237
    .local v0, "index":I
    :goto_1
    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v1, v2, :cond_1e

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 238
    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isContentLightLevelInfo(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 239
    iget v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    .line 240
    const/4 v1, 0x1

    return v1

    .line 242
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist findMasteringDisplayStaticMeta()Z
    .registers 5

    .line 212
    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    .line 213
    .local v0, "index":I
    :goto_2
    add-int/lit8 v1, v0, 0x7

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v1, v2, :cond_35

    .line 214
    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_33

    .line 215
    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    .line 216
    add-int/lit8 v0, v0, 0x4

    .line 217
    add-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/util/NalUnitParser;->isMasteringDisplayColorInfo(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 219
    add-int/lit8 v0, v0, 0x1a

    .line 220
    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findContentLightLevelWithinDisplayMasteringNal(I)Z

    move-result v1

    const-string v3, "NalUnitParser"

    if-eqz v1, :cond_2d

    .line 221
    const-string v1, "Mastering display color meta and Content light level info meta in one NAL"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 224
    :cond_2d
    const-string v1, "Mastering display color meta and Content light level info meta not  in one NAL"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_32
    return v2

    .line 230
    :cond_33
    add-int/2addr v0, v2

    goto :goto_2

    .line 232
    :cond_35
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    .line 233
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist findNalStartCode([BI)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "startIndex"    # I

    .line 262
    array-length v0, p1

    sub-int/2addr v0, p2

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 263
    .local v0, "endIndex":I
    if-lez v0, :cond_19

    .line 264
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-gt v1, v0, :cond_19

    .line 265
    add-int v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 266
    add-int v2, v1, p2

    return v2

    .line 264
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 270
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findPPSPosition([BZ)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "isHEVC"    # Z

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "index":I
    :goto_1
    array-length v1, p1

    sub-int/2addr v1, v0

    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v2, v2

    if-lt v1, v2, :cond_18

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v0

    .line 187
    if-ltz v0, :cond_18

    .line 188
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->isPPSNalUnit([BIZ)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 189
    return v0

    .line 191
    :cond_15
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 196
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist getH265NalUnitType([BI)I
    .registers 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 298
    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist getNalUnitType([BI)I
    .registers 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 295
    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private blacklist isContentLightLevelInfo(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 288
    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    .line 289
    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 288
    :goto_1c
    return v0
.end method

.method private blacklist isMasteringDisplayColorInfo(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 284
    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/16 v1, 0x89

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    .line 285
    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 284
    :goto_1d
    return v0
.end method

.method private blacklist isNalStartCode([BI)Z
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "index"    # I

    .line 273
    array-length v0, p1

    sub-int/2addr v0, p2

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    .line 274
    return v2

    .line 276
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v3, v1

    if-ge v0, v3, :cond_1b

    .line 277
    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_18

    .line 278
    return v2

    .line 276
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 281
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isPPSNalUnit([BIZ)Z
    .registers 11
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "isHEVC"    # Z

    .line 199
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "NAL type : "

    const-string v3, "NalUnitParser"

    if-eqz p3, :cond_2b

    .line 200
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->getH265NalUnitType([BI)I

    move-result v4

    .line 201
    .local v4, "type":I
    invoke-static {v4}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    move-result-object v5

    .line 202
    .local v5, "nalType":Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->PPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    if-ne v5, v2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    .line 205
    .end local v4    # "type":I
    .end local v5    # "nalType":Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
    :cond_2b
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->getNalUnitType([BI)I

    move-result v4

    .line 206
    .restart local v4    # "type":I
    invoke-static {v4}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    move-result-object v5

    .line 207
    .local v5, "nalType":Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->PICTURE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    if-ne v5, v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v1

    :goto_4d
    return v0
.end method

.method private blacklist toUnsigned(B)I
    .registers 3
    .param p1, "val"    # B

    .line 292
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public blacklist findHDRStaticMeta()Z
    .registers 11

    .line 99
    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    const/4 v1, 0x0

    const-string v2, "NalUnitParser"

    if-gez v0, :cond_e

    .line 100
    const-string/jumbo v0, "there is no nal start code"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findMasteringDisplayStaticMeta()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1d

    .line 104
    const-string v0, "fail to find Mastering display color meta in stream."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-object v3, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    .line 106
    return v1

    .line 109
    :cond_1d
    const/4 v0, 0x0

    .line 112
    .local v0, "allMetaInOneNal":Z
    iget v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    iget v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    if-ne v4, v5, :cond_2f

    .line 113
    iget-object v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v4

    move v5, v4

    .line 115
    .local v4, "masteringDisplayColorMetaEndPos":I
    .local v5, "contentsLevelInfoMetaEndPos":I
    const/4 v0, 0x1

    goto :goto_47

    .line 117
    .end local v4    # "masteringDisplayColorMetaEndPos":I
    .end local v5    # "contentsLevelInfoMetaEndPos":I
    :cond_2f
    iget-object v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v4

    .line 119
    .restart local v4    # "masteringDisplayColorMetaEndPos":I
    invoke-direct {p0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findContentLightLevel()Z

    move-result v5

    if-eqz v5, :cond_105

    .line 120
    iget-object v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v6, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    add-int/lit8 v6, v6, 0x4

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v5

    .line 127
    .restart local v5    # "contentsLevelInfoMetaEndPos":I
    :goto_47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mastering display color meta buffer position : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ~ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content light level info meta buffer position : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget v6, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    sub-int v6, v4, v6

    .line 133
    .local v6, "sizeOfMasteringDisplayColorMeta":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mastering display color meta data size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz v0, :cond_a7

    move v7, v1

    goto :goto_ab

    :cond_a7
    iget v7, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    sub-int v7, v5, v7

    .line 137
    .local v7, "sizeOfContentsLevelInfoMeta":I
    :goto_ab
    if-ltz v6, :cond_e4

    if-gez v7, :cond_b0

    goto :goto_e4

    .line 142
    :cond_b0
    add-int v1, v6, v7

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    .line 144
    iget-object v8, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v9, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    invoke-virtual {v1, v8, v9, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 146
    if-nez v0, :cond_e0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content light level info meta data size : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v8, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    invoke-virtual {v1, v2, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 152
    :cond_e0
    iput-object v3, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    .line 153
    const/4 v1, 0x1

    return v1

    .line 138
    :cond_e4
    :goto_e4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid size : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return v1

    .line 123
    .end local v5    # "contentsLevelInfoMetaEndPos":I
    .end local v6    # "sizeOfMasteringDisplayColorMeta":I
    .end local v7    # "sizeOfContentsLevelInfoMeta":I
    :cond_105
    const-string v3, "cannot find Content light level info meta"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return v1
.end method

.method public blacklist getHdrStaticMeta()Ljava/nio/ByteBuffer;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public blacklist insertHDRStaticMeta(Ljava/nio/ByteBuffer;IZ)Ljava/nio/ByteBuffer;
    .registers 10
    .param p1, "orgBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "orgBufferSize"    # I
    .param p3, "isHEVC"    # Z

    .line 159
    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_79

    .line 162
    :cond_b
    new-array v0, p2, [B

    .line 163
    .local v0, "orgByteBuffer":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 164
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/transcode/util/NalUnitParser;->findPPSPosition([BZ)I

    move-result v1

    .line 165
    .local v1, "ppsStartPos":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsPos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NalUnitParser"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v2, -0x1

    .line 167
    .local v2, "ppsEndPos":I
    if-ltz v1, :cond_4f

    .line 168
    add-int/lit8 v4, v1, 0x4

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v2

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ppsEndPos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_4f
    iget-object v3, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 172
    .local v3, "newBuf":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    if-lez v2, :cond_70

    .line 174
    invoke-virtual {v3, v0, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 175
    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 176
    sub-int v4, p2, v2

    invoke-virtual {v3, v0, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_78

    .line 178
    :cond_70
    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 181
    :goto_78
    return-object v3

    .line 160
    .end local v0    # "orgByteBuffer":[B
    .end local v1    # "ppsStartPos":I
    .end local v2    # "ppsEndPos":I
    .end local v3    # "newBuf":Ljava/nio/ByteBuffer;
    :cond_79
    :goto_79
    return-object p1
.end method
