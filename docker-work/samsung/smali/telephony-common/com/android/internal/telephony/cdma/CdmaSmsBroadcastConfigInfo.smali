.class public Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
.super Ljava/lang/Object;
.source "CdmaSmsBroadcastConfigInfo.java"


# instance fields
.field private blacklist mFromServiceCategory:I

.field private blacklist mLanguage:I

.field private blacklist mSelected:Z

.field private blacklist mToServiceCategory:I


# direct methods
.method public constructor blacklist <init>(IIIZ)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    .line 48
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    .line 49
    iput p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mLanguage:I

    .line 50
    iput-boolean p4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mSelected:Z

    return-void
.end method


# virtual methods
.method public blacklist getFromServiceCategory()I
    .registers 1

    .line 57
    iget p0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    return p0
.end method

.method public blacklist getLanguage()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mLanguage:I

    return p0
.end method

.method public blacklist getToServiceCategory()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    return p0
.end method

.method public blacklist isSelected()Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mSelected:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaSmsBroadcastConfigInfo: Id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_27

    const-string p0, "ENABLED"

    goto :goto_29

    :cond_27
    const-string p0, "DISABLED"

    :goto_29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
