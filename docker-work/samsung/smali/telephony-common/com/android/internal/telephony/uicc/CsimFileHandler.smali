.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x6f22

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f28

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f30

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f32

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f38

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f44

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f4d

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f5a

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f74

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f40

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f41

    if-eq p1, v0, :cond_47

    packed-switch p1, :pswitch_data_4a

    packed-switch p1, :pswitch_data_54

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3a

    const-string p0, "3F007F105F3A"

    :cond_3a
    return-object p0

    .line 42
    :pswitch_3b
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result p0

    if-eqz p0, :cond_47

    const-string p0, "3F007F10"

    return-object p0

    :pswitch_44
    const-string p0, "3F007F105F3C"

    return-object p0

    :cond_47
    :pswitch_47
    const-string p0, "3F007FFF"

    return-object p0

    :pswitch_data_4a
    .packed-switch 0x4f20
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x6f3a
        :pswitch_47
        :pswitch_47
        :pswitch_3b
    .end packed-switch
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 2

    const-string p0, "CsimFH"

    .line 79
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string p0, "CsimFH"

    .line 84
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
