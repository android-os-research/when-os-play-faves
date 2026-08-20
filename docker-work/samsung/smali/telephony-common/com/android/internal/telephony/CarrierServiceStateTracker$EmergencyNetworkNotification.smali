.class public Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;
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
    name = "EmergencyNetworkNotification"
.end annotation


# instance fields
.field private blacklist mDelay:I

.field private final blacklist mTypeId:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V
    .registers 3

    .line 539
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 537
    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    .line 540
    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mTypeId:I

    return-void
.end method


# virtual methods
.method public blacklist getDelay()I
    .registers 1

    .line 557
    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    return p0
.end method

.method public blacklist getNotificationBuilder()Landroid/app/Notification$Builder;
    .registers 4

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 590
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-static {v0, p0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1040059

    .line 591
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x1040058

    .line 593
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 595
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 596
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 597
    invoke-virtual {v1, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 598
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/16 v0, 0x20

    const/4 v1, 0x1

    .line 599
    invoke-virtual {p0, v0, v1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string v0, "wfc"

    .line 600
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNotificationId()I
    .registers 1

    .line 565
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    return p0
.end method

.method public blacklist getNotificationTag()Ljava/lang/String;
    .registers 1

    const-string p0, "EmergencyNetworkNotification"

    return-object p0
.end method

.method public blacklist getTypeId()I
    .registers 1

    .line 561
    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mTypeId:I

    return p0
.end method

.method public blacklist sendMessage()Z
    .registers 4

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmergencyNetworkNotification: sendMessage() w/values: ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 577
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$misPhoneRegisteredForWifiCalling(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmSST(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 578
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSST"

    .line 576
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_46

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$misPhoneRegisteredForWifiCalling(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result p0

    if-nez p0, :cond_44

    goto :goto_46

    :cond_44
    const/4 p0, 0x1

    return p0

    :cond_46
    :goto_46
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setDelay(Landroid/os/PersistableBundle;)V
    .registers 4

    const-string v0, "CSST"

    if-nez p1, :cond_a

    const-string p0, "bundle is null"

    .line 548
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const-string v1, "emergency_notification_delay_int"

    .line 551
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    .line 553
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reading time to delay notification emergency: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
