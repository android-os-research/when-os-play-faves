.class Lcom/android/internal/telephony/cat/SendUSSDParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field blacklist dcsCode:I

.field blacklist ussdLength:I

.field blacklist ussdString:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[B)V
    .registers 7

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 326
    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdLength:I

    .line 327
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:[B

    const/4 p1, 0x0

    move p2, p1

    .line 328
    :goto_e
    iget v0, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdLength:I

    if-ge p2, v0, :cond_1c

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:[B

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p3, v1

    aput-byte v2, v0, p2

    move p2, v1

    goto :goto_e

    .line 331
    :cond_1c
    aget-byte p1, p3, p1

    iput p1, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->dcsCode:I

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[BZ)V
    .registers 5

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/SendUSSDParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[B)V

    .line 336
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/cat/CommandParams;->setHasIconTag(Z)V

    return-void
.end method
