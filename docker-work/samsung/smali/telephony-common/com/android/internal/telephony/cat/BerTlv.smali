.class Lcom/android/internal/telephony/cat/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field public static final blacklist BER_EVENT_DOWNLOAD_TAG:I = 0xd6

.field public static final blacklist BER_MENU_SELECTION_TAG:I = 0xd3

.field public static final blacklist BER_PROACTIVE_COMMAND_TAG:I = 0xd0

.field public static final blacklist BER_SMS_PP_DATA_DOWNLOAD_TAG:I = 0xd1

.field public static final blacklist BER_UNKNOWN_TAG:I


# instance fields
.field private blacklist mCompTlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLengthValid:Z

.field private blacklist mTag:I


# direct methods
.method private constructor blacklist <init>(ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;Z)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 43
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 44
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    return-void
.end method

.method public static blacklist decode([B)Lcom/android/internal/telephony/cat/BerTlv;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, " endIndex="

    .line 83
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 89
    :try_start_7
    aget-byte v6, p0, v5
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_9} :catch_f8
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_7 .. :try_end_9} :catch_eb

    const/16 v7, 0xff

    and-int/2addr v6, v7

    const/16 v8, 0xd0

    const-string v9, " curIndex="

    const/16 v10, 0x80

    if-ne v6, v8, :cond_7c

    .line 92
    :try_start_14
    aget-byte v11, p0, v4
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_16} :catch_79
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_14 .. :try_end_16} :catch_eb

    and-int/2addr v11, v7

    if-ge v11, v10, :cond_1c

    move v2, v3

    goto/16 :goto_8c

    :cond_1c
    const/16 v12, 0x81

    if-ne v11, v12, :cond_50

    .line 96
    :try_start_20
    aget-byte v3, p0, v3

    and-int/lit16 v11, v3, 0xff

    if-lt v11, v10, :cond_27

    goto :goto_8c

    .line 98
    :cond_27
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length < 0x80 length="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw p0
    :try_end_50
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_50} :catch_f9
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_20 .. :try_end_50} :catch_eb

    .line 106
    :cond_50
    :try_start_50
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected first byte to be length or a length tag and < 0x81 byte= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw p0
    :try_end_79
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_50 .. :try_end_79} :catch_79
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_50 .. :try_end_79} :catch_eb

    :catch_79
    move v2, v3

    goto/16 :goto_f9

    .line 113
    :cond_7c
    :try_start_7c
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0
    :try_end_82
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7c .. :try_end_82} :catch_f8
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_7c .. :try_end_82} :catch_eb

    and-int/lit16 v2, v6, -0x81

    if-ne v0, v2, :cond_8a

    move v2, v5

    move v6, v2

    move v11, v6

    goto :goto_8c

    :cond_8a
    move v2, v4

    move v11, v5

    :goto_8c
    sub-int v0, v1, v2

    if-lt v0, v11, :cond_c4

    .line 133
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object p0

    if-ne v6, v8, :cond_be

    .line 138
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v5

    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 139
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    if-lt v2, v10, :cond_b3

    if-gt v2, v7, :cond_b3

    add-int/lit8 v2, v2, 0x3

    :goto_b1
    add-int/2addr v1, v2

    goto :goto_9b

    :cond_b3
    if-ltz v2, :cond_ba

    if-ge v2, v10, :cond_ba

    add-int/lit8 v2, v2, 0x2

    goto :goto_b1

    :cond_ba
    move v4, v5

    :cond_bb
    if-eq v11, v1, :cond_be

    move v4, v5

    .line 162
    :cond_be
    new-instance v0, Lcom/android/internal/telephony/cat/BerTlv;

    invoke-direct {v0, v6, p0, v4}, Lcom/android/internal/telephony/cat/BerTlv;-><init>(ILjava/util/List;Z)V

    return-object v0

    .line 128
    :cond_c4
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command had extra data endIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw p0

    :catch_eb
    move-exception p0

    .line 123
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ResultException;->explanation()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v0

    :catch_f8
    move v2, v4

    .line 119
    :catch_f9
    :goto_f9
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IndexOutOfBoundsException  curIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getComprehensionTlvs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getTag()I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    return p0
.end method

.method public blacklist isLengthValid()Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    return p0
.end method
