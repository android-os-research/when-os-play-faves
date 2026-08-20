.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;
.super Landroid/telephony/ims/ProvisioningManager$Callback;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2

    .line 5352
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/telephony/ims/ProvisioningManager$Callback;-><init>()V

    return-void
.end method

.method private blacklist sendConfigChangedIntent(ILjava/lang/String;)V
    .registers 6

    .line 5374
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendConfigChangedIntent - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 5375
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "item"

    .line 5376
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "value"

    .line 5377
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5378
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 5379
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public whitelist onProvisioningIntChanged(II)V
    .registers 3

    .line 5355
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->sendConfigChangedIntent(ILjava/lang/String;)V

    .line 5356
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsManager(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object p2

    if-eqz p2, :cond_20

    const/16 p2, 0x1c

    if-eq p1, p2, :cond_1b

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1b

    const/16 p2, 0xb

    if-ne p1, p2, :cond_20

    .line 5362
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mupdateImsServiceConfig(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    :cond_20
    return-void
.end method

.method public whitelist onProvisioningStringChanged(ILjava/lang/String;)V
    .registers 3

    .line 5368
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->sendConfigChangedIntent(ILjava/lang/String;)V

    return-void
.end method
