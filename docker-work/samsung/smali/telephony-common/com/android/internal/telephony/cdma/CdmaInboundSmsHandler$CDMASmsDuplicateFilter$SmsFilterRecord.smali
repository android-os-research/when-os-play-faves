.class Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;
.super Ljava/lang/Object;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsFilterRecord"
.end annotation


# instance fields
.field private blacklist msgBody:Ljava/lang/String;

.field private blacklist msgId:I

.field private blacklist originAddress:Ljava/lang/String;

.field final synthetic blacklist this$1:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

.field private blacklist timeStamp:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmsgBody(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->msgBody:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmsgId(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->msgId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetoriginAddress(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->originAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettimeStamp(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->timeStamp:J

    return-wide v0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;IJLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 958
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->this$1:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->msgId:I

    .line 960
    iput-wide p3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->timeStamp:J

    .line 961
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->originAddress:Ljava/lang/String;

    .line 962
    iput-object p6, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->msgBody:Ljava/lang/String;

    return-void
.end method
