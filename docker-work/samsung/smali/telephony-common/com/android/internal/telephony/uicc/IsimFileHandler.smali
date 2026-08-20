.class public final Lcom/android/internal/telephony/uicc/IsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "IsimFileHandler.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x6f07

    if-eq p1, v0, :cond_14

    const/16 v0, 0x6f09

    if-eq p1, v0, :cond_14

    const/16 v0, 0x6fd5

    if-eq p1, v0, :cond_14

    packed-switch p1, :pswitch_data_18

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    :pswitch_14
    const-string p0, "3F007FFF"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x6f02
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 2

    const-string p0, "IsimFH"

    .line 52
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string p0, "IsimFH"

    .line 57
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
