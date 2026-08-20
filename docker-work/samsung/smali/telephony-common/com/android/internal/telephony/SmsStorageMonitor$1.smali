.class Lcom/android/internal/telephony/SmsStorageMonitor$1;
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

    .line 224
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isImsSmsSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsStorageMonitor"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SmsManager;->getSmscAddress()Ljava/lang/String;

    move-result-object p1

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "sendRpSmma failed. Error: "

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_a4

    .line 233
    iget-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v4, p2, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 235
    invoke-static {p2}, Lcom/android/internal/telephony/SmsStorageMonitor;->-$$Nest$fgetmSmsLogger(Lcom/android/internal/telephony/SmsStorageMonitor;)Lcom/android/internal/telephony/SmsLogger;

    move-result-object p2

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v5, "ACTION_DEVICE_STORAGE_FULL"

    invoke-virtual {p2, v0, v5, v1}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result p2

    if-eqz p2, :cond_98

    .line 238
    :try_start_69
    iget-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-static {p2}, Lcom/android/internal/telephony/SmsStorageMonitor;->-$$Nest$mgetImsManager(Lcom/android/internal/telephony/SmsStorageMonitor;)Lcom/android/ims/ImsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ims/ImsManager;->sendRpSmma(Ljava/lang/String;)V
    :try_end_72
    .catch Lcom/android/ims/ImsException; {:try_start_69 .. :try_end_72} :catch_74

    goto/16 :goto_10d

    :catch_74
    move-exception p1

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto/16 :goto_10d

    .line 244
    :cond_98
    iget-object p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_10d

    .line 247
    :cond_a4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10d

    .line 248
    iget-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 250
    invoke-static {v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->-$$Nest$sfputmIsFullMemory(Z)V

    .line 252
    iget-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-static {p2}, Lcom/android/internal/telephony/SmsStorageMonitor;->-$$Nest$fgetmSmsLogger(Lcom/android/internal/telephony/SmsStorageMonitor;)Lcom/android/internal/telephony/SmsLogger;

    move-result-object p2

    iget-object v4, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    const-string v5, "ACTION_DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {p2, v0, v5, v4}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result p2

    if-eqz p2, :cond_102

    .line 255
    :try_start_d5
    iget-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-static {p2}, Lcom/android/internal/telephony/SmsStorageMonitor;->-$$Nest$mgetImsManager(Lcom/android/internal/telephony/SmsStorageMonitor;)Lcom/android/ims/ImsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ims/ImsManager;->sendRpSmma(Ljava/lang/String;)V
    :try_end_de
    .catch Lcom/android/ims/ImsException; {:try_start_d5 .. :try_end_de} :catch_df

    goto :goto_10d

    :catch_df
    move-exception p1

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_10d

    .line 261
    :cond_102
    iget-object p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    :cond_10d
    :goto_10d
    return-void
.end method
