.class public Lcom/android/internal/telephony/uicc/SimPBEntryResult;
.super Ljava/lang/Object;
.source "SimPBEntryResult.java"


# static fields
.field public static final blacklist INDEX_ANR:I = 0x0

.field public static final blacklist INDEX_ANRA:I = 0x1

.field public static final blacklist INDEX_ANRB:I = 0x2

.field public static final blacklist INDEX_ANRC:I = 0x3

.field public static final blacklist INDEX_EMAIL:I = 0x2

.field public static final blacklist INDEX_NAME:I = 0x0

.field public static final blacklist INDEX_NUMBER:I = 0x0

.field public static final blacklist INDEX_SNE:I = 0x1

.field public static final blacklist NUM_OF_ALPHA:I = 0x3

.field public static final blacklist NUM_OF_ANR:I = 0x4

.field public static final blacklist NUM_OF_NUMBER:I = 0x5


# instance fields
.field public blacklist additionalNumbers:[Ljava/lang/String;

.field public blacklist alphaTags:[Ljava/lang/String;

.field public blacklist dataTypeAddtionalNumbers:[I

.field public blacklist dataTypeAlphas:[I

.field public blacklist dataTypeNumber:I

.field public blacklist lengthAddtionalNumbers:[I

.field public blacklist lengthAlphas:[I

.field public blacklist lengthNumber:I

.field public blacklist nextIndex:I

.field public blacklist number:Ljava/lang/String;

.field public blacklist recordIndex:I


# direct methods
.method public constructor blacklist <init>([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;II)V
    .registers 21

    move-object v0, p0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 44
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->lengthAlphas:[I

    new-array v2, v1, [I

    .line 45
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->dataTypeAlphas:[I

    new-array v2, v1, [Ljava/lang/String;

    .line 46
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    .line 47
    iput-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->additionalNumbers:[Ljava/lang/String;

    new-array v3, v2, [I

    .line 48
    iput-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->lengthAddtionalNumbers:[I

    new-array v3, v2, [I

    .line 49
    iput-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->dataTypeAddtionalNumbers:[I

    const/4 v3, 0x0

    move v4, v3

    :goto_20
    const-string v5, ""

    if-ge v4, v1, :cond_85

    .line 51
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->lengthAlphas:[I

    aget v7, p1, v4

    aput v7, v6, v4

    .line 52
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->dataTypeAlphas:[I

    aget v7, p2, v4

    aput v7, v6, v4

    .line 53
    aget-object v6, p3, v4

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 54
    aget v7, p2, v4

    const-string v8, "Not supported encoding type"

    const-string v9, "GSM"

    const/4 v10, 0x1

    if-eq v7, v10, :cond_7b

    const/4 v10, 0x2

    if-eq v7, v10, :cond_70

    if-eq v7, v1, :cond_58

    if-eq v7, v2, :cond_50

    .line 77
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aput-object v5, v6, v4

    const-string v5, "SimPBEntryResult: default Unknown type"

    .line 78
    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 73
    :cond_50
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aput-object v5, v6, v4

    .line 74
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 65
    :cond_58
    :try_start_58
    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    new-instance v8, Ljava/lang/String;

    aget v10, p1, v4

    const-string v11, "UTF-16"

    invoke-direct {v8, v6, v3, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v8, v7, v4
    :try_end_65
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_58 .. :try_end_65} :catch_66

    goto :goto_82

    .line 68
    :catch_66
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aput-object v5, v6, v4

    const-string v5, "SimPBEntryResult - implausible UnsupportedEncodingException"

    .line 69
    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 60
    :cond_70
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aget v7, p1, v4

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    goto :goto_82

    .line 56
    :cond_7b
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aput-object v5, v6, v4

    .line 57
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_85
    :goto_85
    const/4 v1, 0x5

    if-ge v3, v1, :cond_b0

    .line 84
    aget v1, p4, v3

    if-eqz v1, :cond_91

    aget-object v2, p6, v3

    if-eqz v2, :cond_91

    goto :goto_92

    :cond_91
    move-object v2, v5

    :goto_92
    if-nez v3, :cond_9d

    .line 87
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->number:Ljava/lang/String;

    .line 88
    iput v1, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->lengthNumber:I

    .line 89
    aget v1, p5, v3

    iput v1, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->dataTypeNumber:I

    goto :goto_ad

    .line 91
    :cond_9d
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->additionalNumbers:[Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    aput-object v2, v4, v6

    .line 92
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->lengthAddtionalNumbers:[I

    aput v1, v2, v6

    .line 93
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->dataTypeAddtionalNumbers:[I

    aget v2, p5, v3

    aput v2, v1, v6

    :goto_ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    :cond_b0
    move/from16 v1, p7

    .line 96
    iput v1, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->recordIndex:I

    move/from16 v1, p8

    .line 97
    iput v1, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->nextIndex:I

    return-void
.end method
