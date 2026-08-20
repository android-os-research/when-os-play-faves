.class Lcom/android/internal/telephony/cat/SendDTMFParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field blacklist dtmfString:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[B)V
    .registers 4

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 346
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[BZ)V
    .registers 5

    .line 350
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/SendDTMFParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[B)V

    .line 351
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/cat/CommandParams;->setHasIconTag(Z)V

    return-void
.end method
