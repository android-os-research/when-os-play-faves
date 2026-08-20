.class public Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;
.super Ljava/lang/Object;
.source "SemImsUtInterfaceProxy.java"

# interfaces
.implements Lcom/android/ims/ImsUtInterface;


# instance fields
.field private blacklist mImsUtInterface:Lcom/android/ims/ImsUtInterface;

.field private blacklist mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/ImsUtInterface;Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    .line 46
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-void
.end method

.method private blacklist cbTypeToServiceCode(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_40

    const/4 v0, 0x0

    goto :goto_22

    :pswitch_5
    const-string v0, "156"

    goto :goto_22

    :pswitch_8
    const-string v0, "353"

    goto :goto_22

    :pswitch_b
    const-string v0, "333"

    goto :goto_22

    :pswitch_e
    const-string v0, "330"

    goto :goto_22

    :pswitch_11
    const-string v0, "157"

    goto :goto_22

    :pswitch_14
    const-string v0, "351"

    goto :goto_22

    :pswitch_17
    const-string v0, "332"

    goto :goto_22

    :pswitch_1a
    const-string v0, "331"

    goto :goto_22

    :pswitch_1d
    const-string v0, "33"

    goto :goto_22

    :pswitch_20
    const-string v0, "35"

    .line 585
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cbTypeToServiceCode - cbType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> serviceCode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->log(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist cfActionToAction(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_18

    :cond_d
    const-string v0, "##"

    goto :goto_18

    :cond_10
    const-string v0, "**"

    goto :goto_18

    :cond_13
    const-string v0, "*"

    goto :goto_18

    :cond_16
    const-string v0, "#"

    .line 486
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cfActionToAction - cfAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " -> action: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SemImsUtInterfaceProxy"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist conditionToServiceCode(I)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    const/4 v0, 0x5

    if-eq p1, v0, :cond_13

    const/4 v0, 0x0

    goto :goto_24

    :cond_13
    const-string v0, "004"

    goto :goto_24

    :cond_16
    const-string v0, "002"

    goto :goto_24

    :cond_19
    const-string v0, "62"

    goto :goto_24

    :cond_1c
    const-string v0, "61"

    goto :goto_24

    :cond_1f
    const-string v0, "67"

    goto :goto_24

    :cond_22
    const-string v0, "21"

    .line 536
    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conditionToServiceCode - condition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> serviceCode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist getCfNoRepTime(IILjava/lang/String;I)Ljava/lang/String;
    .registers 5

    if-eqz p4, :cond_7

    .line 547
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x2

    if-ne p2, p0, :cond_17

    if-eqz p3, :cond_17

    const/4 p0, 0x3

    if-eq p1, p0, :cond_12

    const/4 p0, 0x1

    if-ne p1, p0, :cond_17

    .line 552
    :cond_12
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method private varargs blacklist iLog(Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 10

    .line 376
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x1

    const/4 v2, 0x4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 381
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyLogger;->writeImsPhoneFlowLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist imsUtActionToAction(I)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x3

    if-eq p1, v0, :cond_10

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_18

    :cond_d
    const-string v0, "##"

    goto :goto_18

    :cond_10
    const-string v0, "**"

    goto :goto_18

    :cond_13
    const-string v0, "*"

    goto :goto_18

    :cond_16
    const-string v0, "#"

    .line 467
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsUtActionToAction - imsUtAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> action: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 590
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/SemMmiCodeHelper;->makeMmiCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->isFdnBlocked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemImsUtInterfaceProxy"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 367
    new-instance v0, Lcom/android/ims/ImsException;

    invoke-direct {v0, p3, p2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, p0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 368
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - FDN is blocked"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->log(Ljava/lang/String;)V

    const/16 p2, 0xf1

    const-string v0, "FDN Blocked"

    .line 601
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    .line 597
    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - FDN is blocked. but no result message"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist serviceClassToSi(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_57

    const/16 v0, 0x8

    if-eq p1, v0, :cond_54

    const/16 v0, 0x20

    if-eq p1, v0, :cond_51

    const/16 v0, 0x30

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x40

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x50

    if-eq p1, v0, :cond_48

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_45

    const/4 v0, 0x4

    if-eq p1, v0, :cond_42

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3f

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xd

    if-eq p1, v0, :cond_39

    const/16 v0, 0x10

    if-eq p1, v0, :cond_36

    const/16 v0, 0x11

    if-eq p1, v0, :cond_33

    const/4 v0, 0x0

    goto :goto_59

    :cond_33
    const-string v0, "26"

    goto :goto_59

    :cond_36
    const-string v0, "24"

    goto :goto_59

    :cond_39
    const-string v0, "10"

    goto :goto_59

    :cond_3c
    const-string v0, "12"

    goto :goto_59

    :cond_3f
    const-string v0, "19"

    goto :goto_59

    :cond_42
    const-string v0, "13"

    goto :goto_59

    :cond_45
    const-string v0, "21"

    goto :goto_59

    :cond_48
    const-string v0, "22"

    goto :goto_59

    :cond_4b
    const-string v0, "99"

    goto :goto_59

    :cond_4e
    const-string v0, "20"

    goto :goto_59

    :cond_51
    const-string v0, "25"

    goto :goto_59

    :cond_54
    const-string v0, "16"

    goto :goto_59

    :cond_57
    const-string v0, "11"

    .line 513
    :goto_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceClassToSi - serviceClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> serviceInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->log(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist isUssdEnabled()Z
    .registers 1

    .line 359
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0}, Lcom/android/ims/ImsUtInterface;->isUssdEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .registers 12

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCLIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "*#"

    const-string v6, "30"

    move-object v4, p0

    .line 148
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 149
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_31
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist queryCLIR(Landroid/os/Message;)V
    .registers 12

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCLIR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "*#"

    const-string v6, "31"

    move-object v4, p0

    .line 132
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 133
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_31
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist queryCOLP(Landroid/os/Message;)V
    .registers 12

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCOLP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "*#"

    const-string v6, "76"

    move-object v4, p0

    .line 180
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 181
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_31
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist queryCOLR(Landroid/os/Message;)V
    .registers 12

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCOLR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "*#"

    const-string v6, "77"

    move-object v4, p0

    .line 164
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 165
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_31
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist queryCallBarring(ILandroid/os/Message;)V
    .registers 15

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallBarring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->cbTypeToServiceCode(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "*#"

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 59
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_39
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist queryCallBarring(ILandroid/os/Message;I)V
    .registers 15

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallBarring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v4, v2}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->cbTypeToServiceCode(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->serviceClassToSi(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v6, "*#"

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 76
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_43
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;I)V

    return-void
.end method

.method public blacklist queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    .registers 15

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForward"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v5, v2}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    if-eqz p3, :cond_3a

    .line 93
    iget-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3a

    instance-of v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    if-eqz v2, :cond_3a

    .line 94
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    .line 95
    iget v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 99
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->conditionToServiceCode(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->serviceClassToSi(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v6, "*#"

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 100
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 104
    :cond_51
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist queryCallWaiting(Landroid/os/Message;)V
    .registers 12

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallWaiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "*#"

    const-string v6, "43"

    move-object v4, p0

    .line 116
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 117
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_31
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 343
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/ImsUtInterface;->registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist unregisterForSuppServiceIndication(Landroid/os/Handler;)V
    .registers 2

    .line 352
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1}, Lcom/android/ims/ImsUtInterface;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist updateCLIP(ZLandroid/os/Message;)V
    .registers 8

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCLIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    const-string v1, ""

    goto :goto_11

    :cond_f
    const-string v1, "(no response)"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 300
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist updateCLIR(ILandroid/os/Message;)V
    .registers 8

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCLIR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    const-string v1, ""

    goto :goto_11

    :cond_f
    const-string v1, "(no response)"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 287
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist updateCOLP(ZLandroid/os/Message;)V
    .registers 11

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCOLP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    if-eqz p1, :cond_2a

    const-string v0, "*"

    goto :goto_2c

    :cond_2a
    const-string v0, "#"

    :goto_2c
    move-object v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "76"

    move-object v2, p0

    .line 327
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 328
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist updateCOLR(ILandroid/os/Message;)V
    .registers 11

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCOLR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    if-ne p1, v2, :cond_2a

    const-string v0, "*"

    goto :goto_2c

    :cond_2a
    const-string v0, "#"

    :goto_2c
    move-object v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "77"

    move-object v2, p0

    .line 311
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 312
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 316
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    .registers 16

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallBarring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-direct {p0, v0, v4, v2}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 198
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->cfActionToAction(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->cbTypeToServiceCode(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 199
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_45
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V
    .registers 13

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallBarring"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_f

    const-string v1, ""

    goto :goto_11

    :cond_f
    const-string v1, "(no response)"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 216
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->cfActionToAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->cbTypeToServiceCode(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->serviceClassToSi(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 217
    invoke-direct {p0, p3, v6}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_4f
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;ILjava/lang/String;)V
    .registers 17

    move-object v6, p0

    move-object v7, p3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCallBarring"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_11

    const-string v1, ""

    goto :goto_13

    :cond_11
    const-string v1, "(no response)"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 234
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->cfActionToAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->cbTypeToServiceCode(I)Ljava/lang/String;

    move-result-object v2

    move v9, p5

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->serviceClassToSi(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 235
    invoke-direct {p0, p3, v8}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_53
    iget-object v0, v6, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 21

    move-object v6, p0

    move/from16 v7, p2

    move-object/from16 v8, p6

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCallForward"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_14

    const-string v1, ""

    goto :goto_16

    :cond_14
    const-string v1, "(no response)"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->imsUtActionToAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->conditionToServiceCode(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v10, p4

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->serviceClassToSi(I)Ljava/lang/String;

    move-result-object v4

    move v11, p1

    move-object/from16 v12, p3

    move/from16 v13, p5

    .line 253
    invoke-direct {p0, p1, v7, v12, v13}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->getCfNoRepTime(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object/from16 v3, p3

    .line 252
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 254
    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_6a
    iget-object v0, v6, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public blacklist updateCallWaiting(ZILandroid/os/Message;)V
    .registers 12

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallWaiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_f

    const-string v2, ""

    goto :goto_11

    :cond_f
    const-string v2, "(no response)"

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v4, v2}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    if-eqz p1, :cond_31

    const-string v0, "*"

    goto :goto_33

    :cond_31
    const-string v0, "#"

    :goto_33
    move-object v3, v0

    .line 269
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->serviceClassToSi(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "43"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->isFdnBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 270
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->sendFdnBlockedResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 274
    :cond_47
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsUtInterfaceProxy;->mImsUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V

    return-void
.end method
