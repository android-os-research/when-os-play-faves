.class public Lcom/android/internal/telephony/cdma/SemEriManager;
.super Lcom/android/internal/telephony/cdma/EriManager;
.source "SemEriManager.java"


# instance fields
.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;I)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/Phone;I)V

    .line 19
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SemEriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method public blacklist getCdmaEriText(II)Ljava/lang/String;
    .registers 7

    .line 26
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_57

    const-string v0, "ACG"

    if-nez p1, :cond_1f

    .line 27
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SemEriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v1, "Roaming"

    goto :goto_57

    :cond_1f
    const/4 v2, 0x1

    if-ne p1, v2, :cond_57

    .line 30
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SemEriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 31
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->cdma_home_operator_alpha()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v0, "Chameleon"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v1, "Samsung"

    goto :goto_57

    .line 35
    :cond_45
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SemEriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v1, "Home"

    .line 41
    :cond_57
    :goto_57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 42
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object v1

    :cond_61
    return-object v1
.end method
