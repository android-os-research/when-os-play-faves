.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x6f3b

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f3c

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x6f42

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f43

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f4b

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f4c

    if-eq p1, v0, :cond_47

    const-string v0, "3F007F105F3A"

    sparse-switch p1, :sswitch_data_4a

    packed-switch p1, :pswitch_data_90

    packed-switch p1, :pswitch_data_a0

    packed-switch p1, :pswitch_data_aa

    packed-switch p1, :pswitch_data_b4

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_30

    return-object v0

    :cond_30
    return-object p0

    :sswitch_31
    const-string p0, "3F007F43"

    return-object p0

    :sswitch_34
    const-string p0, "3F007FFF5F50"

    return-object p0

    :sswitch_37
    return-object v0

    :sswitch_38
    const-string p0, "3F007FFF5FC0"

    return-object p0

    :sswitch_3b
    const-string p0, "3F00"

    return-object p0

    .line 41
    :cond_3e
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result p0

    if-eqz p0, :cond_47

    const-string p0, "3F007F10"

    return-object p0

    :cond_47
    :pswitch_47
    :sswitch_47
    const-string p0, "3F007FFF"

    return-object p0

    :sswitch_data_4a
    .sparse-switch
        0x2ff0 -> :sswitch_3b
        0x4f08 -> :sswitch_38
        0x4f30 -> :sswitch_37
        0x4f84 -> :sswitch_34
        0x6f02 -> :sswitch_31
        0x6f05 -> :sswitch_47
        0x6f11 -> :sswitch_47
        0x6f31 -> :sswitch_47
        0x6f38 -> :sswitch_47
        0x6f46 -> :sswitch_47
        0x6f49 -> :sswitch_47
        0x6f4e -> :sswitch_47
        0x6f7b -> :sswitch_47
        0x6fad -> :sswitch_47
        0x6fcd -> :sswitch_47
        0x6fd9 -> :sswitch_47
        0x6fdc -> :sswitch_47
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x6f13
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x6f3e
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x6f60
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x6fc5
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 2

    const-string p0, "UsimFH"

    .line 119
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string p0, "UsimFH"

    .line 124
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
