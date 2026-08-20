.class Lcom/android/internal/telephony/SubscriptionController$2;
.super Landroid/database/ContentObserver;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionController;->internalInit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Handler;)V
    .registers 3

    .line 403
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 406
    sget-object p1, Landroid/telephony/SubscriptionManager;->SIM_INFO_SUW_RESTORE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 407
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 408
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 410
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object p1, p1, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 411
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object p2, p1, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    .line 413
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 414
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 416
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p2

    .line 415
    invoke-static {v0, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p2

    .line 417
    invoke-virtual {p2}, Lcom/android/ims/ImsManager;->updateImsServiceConfig()V

    goto :goto_31

    :cond_5b
    return-void
.end method
