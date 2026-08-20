.class public Lcom/android/internal/telephony/uicc/IccSimPortInfo;
.super Ljava/lang/Object;
.source "IccSimPortInfo.java"


# instance fields
.field public blacklist mIccId:Ljava/lang/String;

.field public blacklist mLogicalSlotIndex:I

.field public blacklist mPortActive:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 39
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 40
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-ne v2, v3, :cond_2b

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    iget v3, p1, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    if-ne v2, v3, :cond_2b

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 42
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iccid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "logicalSlotIndex="

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "portActive="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
