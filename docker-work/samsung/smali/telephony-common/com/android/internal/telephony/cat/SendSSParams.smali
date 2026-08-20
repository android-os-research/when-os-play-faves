.class Lcom/android/internal/telephony/cat/SendSSParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field blacklist ssString:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;)V
    .registers 4

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 311
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendSSParams;->ssString:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Z)V
    .registers 5

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/SendSSParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/cat/CommandParams;->setHasIconTag(Z)V

    return-void
.end method
