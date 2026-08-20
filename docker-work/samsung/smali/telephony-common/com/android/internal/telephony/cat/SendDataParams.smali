.class Lcom/android/internal/telephony/cat/SendDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mChannelData:[B

.field blacklist mChannelId:I

.field blacklist mSendImmediate:Z

.field blacklist mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;I[BZLcom/android/internal/telephony/cat/TextMessage;)V
    .registers 6

    .line 459
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 460
    iput p2, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    .line 461
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    .line 462
    iput-boolean p4, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    .line 463
    iput-object p5, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    return-void
.end method
