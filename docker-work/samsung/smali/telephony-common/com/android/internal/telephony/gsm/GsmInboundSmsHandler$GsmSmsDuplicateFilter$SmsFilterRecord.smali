.class Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
.super Ljava/lang/Object;
.source "GsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsFilterRecord"
.end annotation


# instance fields
.field blacklist mFingerprint:[B

.field blacklist mSms:Lcom/android/internal/telephony/SmsMessageBase;

.field final synthetic blacklist this$1:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)V
    .registers 3

    .line 646
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;->this$1:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;->mSms:Lcom/android/internal/telephony/SmsMessageBase;

    .line 648
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->-$$Nest$mgetSmsFingerprint(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;->mFingerprint:[B

    return-void
.end method
