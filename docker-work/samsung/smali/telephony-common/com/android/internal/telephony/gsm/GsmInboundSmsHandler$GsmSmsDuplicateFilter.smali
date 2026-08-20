.class Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;
.super Ljava/lang/Object;
.source "GsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GsmSmsDuplicateFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
    }
.end annotation


# instance fields
.field private final blacklist FILTER_SIZE:I

.field blacklist mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetSmsFingerprint(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)[B
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .registers 2

    .line 654
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xf

    .line 640
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->FILTER_SIZE:I

    .line 655
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B
    .registers 5

    .line 683
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 685
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 687
    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 688
    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .line 689
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 693
    :cond_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 695
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V
    .registers 4

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_10

    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 663
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;-><init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .registers 13

    .line 699
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->access$300(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v2, "DOCOMO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    if-eqz v0, :cond_29

    .line 703
    iget-object v1, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v1, :cond_29

    .line 704
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    const-string p1, "isDuplicated: This is concatenated SMS, So, It passed to check duplication!!"

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->access$400(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Ljava/lang/String;)V

    return v2

    :cond_29
    move v1, v2

    .line 709
    :goto_2a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a3

    .line 711
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;

    .line 712
    iget-object v4, v3, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;->mSms:Lcom/android/internal/telephony/SmsMessageBase;

    .line 714
    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_50

    .line 715
    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_59

    .line 717
    :cond_50
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_58

    move v5, v6

    goto :goto_59

    :cond_58
    move v5, v2

    .line 720
    :goto_59
    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_67

    move v7, v6

    goto :goto_68

    :cond_67
    move v7, v2

    :goto_68
    if-eqz v0, :cond_7d

    .line 723
    iget-object v8, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v8, :cond_72

    iget-object v8, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v8, :cond_7d

    .line 724
    :cond_72
    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;->mFingerprint:[B

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_99

    .line 726
    :cond_7d
    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_90

    .line 727
    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_99

    .line 729
    :cond_90
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_98

    move v3, v6

    goto :goto_99

    :cond_98
    move v3, v2

    :goto_99
    if-eqz v5, :cond_a0

    if-eqz v3, :cond_a0

    if-eqz v7, :cond_a0

    return v6

    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_a3
    return v2
.end method

.method public blacklist removeMessage(Lcom/android/internal/telephony/SmsMessageBase;)V
    .registers 5

    const/4 v0, 0x0

    .line 669
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 670
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;

    .line 671
    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;->mSms:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v1, :cond_27

    .line 672
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 673
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v1, "GsmInboundSmsHandler"

    const-string v2, "removeMessage"

    .line 674
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    return-void
.end method
