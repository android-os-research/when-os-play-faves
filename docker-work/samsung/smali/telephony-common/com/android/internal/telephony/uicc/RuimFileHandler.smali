.class public final Lcom/android/internal/telephony/uicc/RuimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "RuimFileHandler.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x6f22

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x6f28

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x6f30

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x6f32

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x6f38

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x6f3c

    if-eq p1, v0, :cond_33

    const/16 v0, 0x6f41

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x6f44

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x6f4d

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x6f5a

    if-eq p1, v0, :cond_3c

    packed-switch p1, :pswitch_data_40

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_30
    const-string p0, "3F007F105F3C"

    return-object p0

    .line 65
    :cond_33
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result p0

    if-eqz p0, :cond_3c

    const-string p0, "3F007F10"

    return-object p0

    :cond_3c
    const-string p0, "3F007F25"

    return-object p0

    nop

    :pswitch_data_40
    .packed-switch 0x4f20
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist loadEFImgTransparent(IIIILandroid/os/Message;)V
    .registers 20

    move-object v0, p0

    const/16 v1, 0xa

    const/4 v2, 0x0

    move v5, p1

    move-object/from16 v3, p5

    .line 46
    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 55
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x4f20

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v4, 0xc0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 3

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[RuimFileHandler] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RuimFH"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 3

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[RuimFileHandler] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RuimFH"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
