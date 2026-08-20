.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$2;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$2;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received broadcast "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsBroadcastUndelivered"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 137
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->setUserUnlocked()V

    .line 138
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$2;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-$$Nest$mprocessPendingMessage(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    :cond_2e
    return-void
.end method
