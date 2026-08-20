.class public Lcom/android/internal/telephony/imsphone/SemImsPhoneCallTracker;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.source "SemImsPhoneCallTracker.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    const-class v0, Lcom/android/internal/telephony/imsphone/SemImsPhoneCallTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/SemImsPhoneCallTracker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;)V

    return-void
.end method


# virtual methods
.method protected blacklist displayRttE911FailedPopup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 4

    .line 18
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-eqz v0, :cond_50

    if-eqz p1, :cond_50

    .line 19
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result p1

    if-eqz p1, :cond_50

    const-string p1, "displayRttE911FailedPopup"

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 22
    :try_start_1b
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040bdf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_3a
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_3a} :catch_3b

    goto :goto_50

    :catch_3b
    move-exception p1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayRttE911FailedPopup is failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :cond_50
    :goto_50
    return-void
.end method
