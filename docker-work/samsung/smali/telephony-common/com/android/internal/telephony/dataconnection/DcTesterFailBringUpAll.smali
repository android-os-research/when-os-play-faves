.class public Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
.super Ljava/lang/Object;
.source "DcTesterFailBringUpAll.java"


# instance fields
.field private blacklist mActionFailBringUp:Ljava/lang/String;

.field private blacklist mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionFailBringUp(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailBringUp(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .registers 10

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->INTENT_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "action_fail_bringup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_9f

    .line 81
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register for intent action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_9f
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    const-string p0, "DcTesterFailBrinupAll"

    .line 108
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method blacklist dispose()V
    .registers 2

    .line 98
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_f
    return-void
.end method

.method public blacklist getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    return-object p0
.end method
