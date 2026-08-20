.class Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;
.super Ljava/lang/Object;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CDMASmsDuplicateFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;
    }
.end annotation


# instance fields
.field blacklist mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .registers 2

    .line 967
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V
    .registers 11

    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_10

    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 975
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTeleserviceId()I

    move-result v0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_3a

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;IJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    return-void
.end method

.method public blacklist isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    .line 1017
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_bb

    .line 1019
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;

    .line 1021
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgetoriginAddress(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_23

    .line 1022
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_21

    move v3, v4

    goto :goto_2f

    :cond_21
    move v3, v0

    goto :goto_2f

    .line 1024
    :cond_23
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgetoriginAddress(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1027
    :goto_2f
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgettimeStamp(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_3d

    move v5, v4

    goto :goto_3e

    :cond_3d
    move v5, v0

    .line 1028
    :goto_3e
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgetmsgId(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)I

    move-result v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v7

    if-ne v6, v7, :cond_4a

    move v6, v4

    goto :goto_4b

    :cond_4a
    move v6, v0

    .line 1030
    :goto_4b
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgetmsgBody(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5b

    .line 1031
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_59

    move v2, v4

    goto :goto_67

    :cond_59
    move v2, v0

    goto :goto_67

    .line 1033
    :cond_5b
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgetmsgBody(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1035
    :goto_67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isDuplicated()->addrMatched value:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " timeMatched value:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " msgIdMatched value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "  bodyMatched value:   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CdmaInboundSmsHandler"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$900(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v7

    const-string v8, "sms_3gpp2_lgt_network"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ae

    if-eqz v3, :cond_b7

    if-eqz v2, :cond_b7

    if-eqz v5, :cond_b7

    return v4

    :cond_ae
    if-eqz v3, :cond_b7

    if-eqz v2, :cond_b7

    if-eqz v5, :cond_b7

    if-eqz v6, :cond_b7

    return v4

    :cond_b7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_bb
    return v0
.end method

.method public blacklist removeMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    .line 987
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 989
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;

    .line 991
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgetoriginAddress(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_23

    .line 992
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_21

    move v3, v4

    goto :goto_2f

    :cond_21
    move v3, v0

    goto :goto_2f

    .line 994
    :cond_23
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgetoriginAddress(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 997
    :goto_2f
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgettimeStamp(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_3d

    move v5, v4

    goto :goto_3e

    :cond_3d
    move v5, v0

    .line 998
    :goto_3e
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgetmsgId(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)I

    move-result v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v7

    if-ne v6, v7, :cond_4a

    move v6, v4

    goto :goto_4b

    :cond_4a
    move v6, v0

    .line 1000
    :goto_4b
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgetmsgBody(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5b

    .line 1001
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_59

    move v2, v4

    goto :goto_67

    :cond_59
    move v2, v0

    goto :goto_67

    .line 1003
    :cond_5b
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->-$$Nest$fgetmsgBody(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_67
    if-eqz v3, :cond_75

    if-eqz v2, :cond_75

    if-eqz v5, :cond_75

    if-eqz v6, :cond_75

    .line 1007
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v4

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_78
    return v0
.end method
