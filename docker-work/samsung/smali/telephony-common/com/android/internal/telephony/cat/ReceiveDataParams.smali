.class Lcom/android/internal/telephony/cat/ReceiveDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mChannelDataLength:B

.field blacklist mChannelId:I

.field blacklist mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;IBLcom/android/internal/telephony/cat/TextMessage;)V
    .registers 5

    .line 445
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 446
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    .line 447
    iput-byte p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    .line 448
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    return-void
.end method
