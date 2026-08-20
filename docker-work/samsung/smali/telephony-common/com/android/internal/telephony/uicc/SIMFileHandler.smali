.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"


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

    const/16 v0, 0x4f30

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x6f02

    if-eq p1, v0, :cond_4a

    const/16 v0, 0x6f11

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f38

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f3c

    if-eq p1, v0, :cond_44

    const/16 v0, 0x6f42

    if-eq p1, v0, :cond_44

    const/16 v0, 0x6f46

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6fad

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6fcd

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6fe5

    if-eq p1, v0, :cond_44

    const/16 v0, 0x6f3e

    if-eq p1, v0, :cond_47

    const/16 v0, 0x6f3f

    if-eq p1, v0, :cond_47

    packed-switch p1, :pswitch_data_50

    packed-switch p1, :pswitch_data_60

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_43

    const-string p1, "SIMFileHandler"

    const-string v0, "Error: EF Path being returned in null"

    .line 87
    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-object p0

    :cond_44
    const-string p0, "3F007F10"

    return-object p0

    :cond_47
    :pswitch_47
    const-string p0, "3F007F20"

    return-object p0

    :cond_4a
    const-string p0, "3F007F43"

    return-object p0

    :cond_4d
    const-string p0, "3F007F105F3A"

    return-object p0

    :pswitch_data_50
    .packed-switch 0x6f13
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch

    :pswitch_data_60
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

    const-string p0, "SIMFileHandler"

    .line 94
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string p0, "SIMFileHandler"

    .line 99
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
