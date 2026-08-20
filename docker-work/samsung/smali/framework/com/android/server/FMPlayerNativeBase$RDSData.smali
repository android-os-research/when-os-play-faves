.class Lcom/android/server/FMPlayerNativeBase$RDSData;
.super Ljava/lang/Object;
.source "FMPlayerNativeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNativeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RDSData"
.end annotation


# instance fields
.field public blacklist mChannelName:Ljava/lang/String;

.field public blacklist mFreq:J

.field public blacklist mRadioText:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "freq"    # J
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "radioText"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    .line 43
    if-eqz p3, :cond_e

    .line 44
    iput-object p3, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    .line 46
    :cond_e
    if-eqz p4, :cond_12

    .line 47
    iput-object p4, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    .line 49
    :cond_12
    return-void
.end method

.method public constructor blacklist <init>(J[B[B)V
    .registers 8
    .param p1, "freq"    # J
    .param p3, "channelName"    # [B
    .param p4, "radioText"    # [B

    .line 21
    const-string v0, "FMPlayerNativeBase"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    .line 27
    :try_start_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    .line 30
    goto :goto_1a

    .line 28
    :catch_14
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception in new String(channelName) :"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    :try_start_1a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p4}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_22

    .line 35
    goto :goto_28

    .line 33
    :catch_22
    move-exception v1

    .line 34
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Exception in new String(radioText) :"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_28
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n== RDSData :--> \nFreq :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \nChannel Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<-- \nRadio Text :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<--: ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
