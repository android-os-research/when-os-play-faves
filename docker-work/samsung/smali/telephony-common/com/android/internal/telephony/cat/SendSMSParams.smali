.class Lcom/android/internal/telephony/cat/SendSMSParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field blacklist Format:Ljava/lang/String;

.field blacklist Pdu:Ljava/lang/String;

.field blacklist SmscAddress:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 363
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->SmscAddress:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->Pdu:Ljava/lang/String;

    .line 365
    iput-object p5, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->Format:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 369
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cat/SendSMSParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/cat/CommandParams;->setHasIconTag(Z)V

    return-void
.end method
