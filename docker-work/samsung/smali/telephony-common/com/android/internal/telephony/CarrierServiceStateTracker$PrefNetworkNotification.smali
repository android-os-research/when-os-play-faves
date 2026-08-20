.class public Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;
.super Ljava/lang/Object;
.source "CarrierServiceStateTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrefNetworkNotification"
.end annotation


# instance fields
.field private blacklist mDelay:I

.field private final blacklist mTypeId:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V
    .registers 3

    .line 460
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 458
    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    .line 461
    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mTypeId:I

    return-void
.end method


# virtual methods
.method public blacklist getDelay()I
    .registers 1

    .line 478
    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    return p0
.end method

.method public blacklist getNotificationBuilder()Landroid/app/Notification$Builder;
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 512
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "expandable"

    const/4 v3, 0x1

    .line 513
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x44000000    # 512.0f

    .line 514
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 516
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-static {v0, p0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x104005c

    .line 517
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x104005b

    .line 519
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 521
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 522
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 523
    invoke-virtual {v2, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 524
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string v0, "alert"

    .line 525
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 526
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNotificationId()I
    .registers 1

    .line 486
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    return p0
.end method

.method public blacklist getNotificationTag()Ljava/lang/String;
    .registers 1

    const-string p0, "PrefNetworkNotification"

    return-object p0
.end method

.method public blacklist getTypeId()I
    .registers 1

    .line 482
    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mTypeId:I

    return p0
.end method

.method public blacklist sendMessage()Z
    .registers 4

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrefNetworkNotification: sendMessage() w/values: ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 498
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$misPhoneStillRegistered(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$misGlobalMode(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmSST(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 499
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSST"

    .line 497
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_62

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$misPhoneStillRegistered(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$misGlobalMode(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isRadioOffOrAirplaneMode()Z

    move-result p0

    if-eqz p0, :cond_60

    goto :goto_62

    :cond_60
    const/4 p0, 0x1

    return p0

    :cond_62
    :goto_62
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setDelay(Landroid/os/PersistableBundle;)V
    .registers 4

    const-string v0, "CSST"

    if-nez p1, :cond_a

    const-string p0, "bundle is null"

    .line 469
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const-string v1, "network_notification_delay_int"

    .line 472
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reading time to delay notification pref network: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
