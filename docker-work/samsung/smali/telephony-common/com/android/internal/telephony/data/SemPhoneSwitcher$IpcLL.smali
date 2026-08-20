.class public Lcom/android/internal/telephony/data/SemPhoneSwitcher$IpcLL;
.super Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;
.source "SemPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/SemPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IpcLL"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)V
    .registers 2

    .line 1664
    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$IpcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    .line 1665
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;-><init>(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)V

    return-void
.end method


# virtual methods
.method protected blacklist processNoneState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I
    .registers 3

    const/4 v0, 0x0

    .line 1699
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->notifyNonDdsMmsMsgToDct(Z)V

    .line 1701
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->processNoneState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I

    move-result p0

    return p0
.end method

.method protected blacklist processOverrideState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I
    .registers 4

    .line 1671
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemDataProps;->support_on_demand_pdn()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    move v0, v1

    :cond_17
    if-nez v0, :cond_28

    .line 1675
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$IpcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget-object v0, p1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result p1

    goto :goto_29

    :cond_28
    const/4 p1, -0x1

    .line 1679
    :goto_29
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->notifyNonDdsMmsMsgToDct(Z)V

    return p1
.end method

.method protected blacklist processRestoreState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I
    .registers 5

    .line 1686
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemDataProps;->support_on_demand_pdn()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    move v1, v2

    :cond_17
    if-eqz v1, :cond_32

    .line 1690
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->clear()V

    .line 1691
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$IpcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRestoreState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    :cond_32
    const/4 p0, -0x1

    return p0
.end method
