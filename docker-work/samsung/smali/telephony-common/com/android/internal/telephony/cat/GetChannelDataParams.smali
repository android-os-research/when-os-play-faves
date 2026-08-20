.class Lcom/android/internal/telephony/cat/GetChannelDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mChannelId:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;I)V
    .registers 3

    .line 471
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 472
    iput p2, p0, Lcom/android/internal/telephony/cat/GetChannelDataParams;->mChannelId:I

    return-void
.end method
