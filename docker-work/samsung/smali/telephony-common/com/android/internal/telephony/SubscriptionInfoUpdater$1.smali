.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 187
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-$$Nest$fgetshouldRetryUpdateEmbeddedSubscriptions(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result p1

    if-eqz p1, :cond_50

    const-string p1, "Retrying refresh embedded subscriptions after user unlock."

    .line 188
    invoke-static {p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-$$Nest$fgetretryUpdateEmbeddedSubscriptionCards(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->requestEmbeddedSubscriptionInfoListRefresh(ILjava/lang/Runnable;)V

    goto :goto_23

    .line 192
    :cond_3a
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-$$Nest$fgetretryUpdateEmbeddedSubscriptionCards(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-$$Nest$sfgetsContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-$$Nest$fgetmUserUnlockedReceiver(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_50
    return-void
.end method
