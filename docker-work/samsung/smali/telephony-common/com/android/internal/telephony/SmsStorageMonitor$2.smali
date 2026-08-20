.class Lcom/android/internal/telephony/SmsStorageMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "SmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsStorageMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string p1, "SmsStorageMonitor"

    const-string v0, "BroadcastReceiver - mGcfResultReceiver "

    .line 310
    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ril.sms.gcf-mode"

    .line 311
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "On"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_45

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->-$$Nest$fgetmSmsLogger(Lcom/android/internal/telephony/SmsStorageMonitor;)Lcom/android/internal/telephony/SmsLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "ACTION_GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 317
    :cond_45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_74

    .line 318
    iget-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-static {p2}, Lcom/android/internal/telephony/SmsStorageMonitor;->-$$Nest$fgetmSmsLogger(Lcom/android/internal/telephony/SmsStorageMonitor;)Lcom/android/internal/telephony/SmsLogger;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v2, "ACTION_GCF_DEVICE_STORAGE_OK"

    invoke-virtual {p2, p1, v2, v0}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 319
    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object p2, p1, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p2, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 320
    iget-object p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$2;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    :cond_74
    return-void
.end method
