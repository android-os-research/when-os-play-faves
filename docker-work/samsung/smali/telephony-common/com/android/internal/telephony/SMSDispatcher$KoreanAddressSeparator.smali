.class public Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KoreanAddressSeparator"
.end annotation


# instance fields
.field public blacklist mCurIndex:I

.field public blacklist mDestAddr:Ljava/lang/String;

.field public blacklist mSenderAddr:Ljava/lang/String;

.field public blacklist mTID:I

.field public blacklist mTotalCnt:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V
    .registers 11

    .line 3887
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    .line 3888
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3890
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 3891
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3892
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    .line 3893
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    const/4 v2, 0x0

    .line 3894
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTID:I

    .line 3896
    array-length v3, v0

    const-string v4, "SMSDispatcher"

    const/4 v5, 0x3

    if-ne v3, v1, :cond_23

    .line 3897
    aget-object p2, v0, v2

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    goto :goto_64

    .line 3898
    :cond_23
    array-length v3, v0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_30

    .line 3899
    aget-object p2, v0, v2

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 3900
    aget-object p2, v0, v1

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    goto :goto_64

    .line 3901
    :cond_30
    array-length v3, v0

    if-ne v3, v5, :cond_48

    .line 3902
    aget-object p2, v0, v2

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 3904
    aget-object p2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    .line 3905
    aget-object p2, v0, v6

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    goto :goto_64

    .line 3906
    :cond_48
    array-length v3, v0

    const/4 v7, 0x4

    if-ne v3, v7, :cond_9e

    .line 3907
    aget-object p2, v0, v2

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 3908
    aget-object p2, v0, v1

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    .line 3910
    aget-object p2, v0, v6

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    .line 3911
    aget-object p2, v0, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    .line 3917
    :goto_64
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    if-eqz p2, :cond_6e

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_98

    :cond_6e
    const-string p2, "No sender address info. Set to getLine1Number()"

    .line 3918
    invoke-static {v4, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    :try_start_73
    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    const-string p2, "+82"

    .line 3922
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_96

    .line 3923
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3926
    :cond_96
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_98} :catch_99

    :cond_98
    return-void

    :catch_99
    move-exception p0

    .line 3928
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 3913
    :cond_9e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "KoreanAddressSeparator: Illegal format. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
