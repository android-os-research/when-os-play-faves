.class public Lcom/samsung/android/telephony/SemIccPhonebookManager;
.super Ljava/lang/Object;
.source "SemIccPhonebookManager.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;
    .registers 3

    :try_start_0
    const-string v0, "simphonebook"

    .line 65
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_14

    :catch_b
    move-exception v0

    const-string v1, "IccPBManager"

    const-string v2, "SecurityException occured"

    .line 67
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method private static blacklist getSubId(I)I
    .registers 2

    .line 73
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_d

    .line 74
    array-length v0, p0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 75
    aget p0, p0, v0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public static whitelist semGetAdnLikesInfo(II)[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/samsung/android/telephony/SemIccPhonebookManager;->getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 23
    invoke-static {p1}, Lcom/samsung/android/telephony/SemIccPhonebookManager;->getSubId(I)I

    move-result p1

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfoForSubscriber(II)[I

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "IccPBManager"

    const-string p1, "IIccPhoneBook is null"

    .line 25
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static whitelist semGetAdnLikesSimStatusInfo(II)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/samsung/android/telephony/SemIccPhonebookManager;->getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 35
    invoke-static {p1}, Lcom/samsung/android/telephony/SemIccPhonebookManager;->getSubId(I)I

    move-result p1

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfoForSubscriber(II)I

    move-result p0

    return p0

    :cond_f
    const-string p0, "IccPBManager"

    const-string p1, "IIccPhoneBook is null"

    .line 37
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist semGetUsimPBCapaInfo(I)[I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/samsung/android/telephony/SemIccPhonebookManager;->getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "IccPBManager"

    if-eqz v0, :cond_1c

    .line 48
    invoke-static {p0}, Lcom/samsung/android/telephony/SemIccPhonebookManager;->getSubId(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfoForSubscriber(I)Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    return-object p0

    :cond_16
    const-string p0, "usimPbCapaInfo is null"

    .line 52
    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1c
    const-string p0, "IIccPhoneBook is null"

    .line 56
    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
