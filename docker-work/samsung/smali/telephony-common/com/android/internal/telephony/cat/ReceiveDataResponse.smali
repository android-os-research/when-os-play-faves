.class Lcom/android/internal/telephony/cat/ReceiveDataResponse;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field blacklist bytesRemaining:I

.field blacklist data:[B

.field blacklist dataLength:I


# direct methods
.method public constructor blacklist <init>([BII)V
    .registers 4

    .line 559
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->data:[B

    .line 561
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "temp[] length = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " dataLen = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytesInRxbuf = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    iput p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .registers 7

    .line 533
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    const/16 v1, 0x80

    or-int/2addr v0, v1

    .line 534
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 535
    iget v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    const/16 v2, 0xff

    if-ge v0, v1, :cond_16

    .line 536
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_24

    :cond_16
    if-lt v0, v1, :cond_24

    if-ge v0, v2, :cond_24

    const/16 v0, 0x81

    .line 538
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 539
    iget v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_24
    :goto_24
    const/4 v0, 0x0

    move v3, v0

    .line 542
    :goto_26
    iget v4, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    if-ge v3, v4, :cond_34

    .line 543
    iget-object v4, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->data:[B

    aget-byte v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 547
    :cond_34
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    or-int/2addr v1, v3

    .line 548
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x1

    .line 549
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 550
    iget v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    if-gez v1, :cond_48

    .line 551
    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    .line 553
    :cond_48
    iget v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    const/16 v1, 0xfe

    if-le v0, v1, :cond_50

    .line 554
    iput v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    .line 556
    :cond_50
    iget p0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
