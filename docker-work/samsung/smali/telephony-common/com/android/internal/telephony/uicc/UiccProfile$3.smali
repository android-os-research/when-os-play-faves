.class Lcom/android/internal/telephony/uicc/UiccProfile$3;
.super Landroid/content/BroadcastReceiver;
.source "UiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 358
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 359
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_b3

    .line 361
    :cond_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.START_ICC_NETWORK_DEPERSO"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 362
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$misSupportSsu(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p1

    if-eqz p1, :cond_69

    const-string p1, "ssu.status"

    const-string p2, ""

    .line 363
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "perm_unlock"

    .line 364
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b3

    const-string p2, "temp_unlock"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b3

    .line 365
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmSalesCode(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VZW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmSalesCode(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VPP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 366
    :cond_63
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mmakeVzwSsuNetworkLockDialog(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    goto :goto_b3

    .line 370
    :cond_69
    sget-object p1, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_a3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_92

    const/4 p2, 0x3

    if-eq p1, p2, :cond_81

    goto :goto_b3

    .line 380
    :cond_81
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string p2, "Receive START_ICC_NETWORK_DEPERSO, lockType : SP"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 381
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmServicePoviderLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_b3

    .line 376
    :cond_92
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string p2, "Receive START_ICC_NETWORK_DEPERSO, lockType : SUBSET"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 377
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmNetworkSubsetLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_b3

    .line 372
    :cond_a3
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string p2, "Receive START_ICC_NETWORK_DEPERSO, lockType : NETWORK"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 373
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmNetworkLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_b3
    :goto_b3
    return-void
.end method
