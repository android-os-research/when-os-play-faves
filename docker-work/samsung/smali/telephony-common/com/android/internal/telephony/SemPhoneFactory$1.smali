.class Lcom/android/internal/telephony/SemPhoneFactory$1;
.super Landroid/content/BroadcastReceiver;
.source "SemPhoneFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemPhoneFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemPhoneFactory;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemPhoneFactory;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/SemPhoneFactory$1;->this$0:Lcom/android/internal/telephony/SemPhoneFactory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 40
    :try_start_c
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneFactory$1;->this$0:Lcom/android/internal/telephony/SemPhoneFactory;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemPhoneFactory;->-$$Nest$monMultiSimConfigChanged(Lcom/android/internal/telephony/SemPhoneFactory;I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1c

    goto :goto_35

    :catch_1c
    move-exception p0

    .line 42
    invoke-static {}, Lcom/android/internal/telephony/SemPhoneFactory;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to onMultiSimConfigChanged: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_35
    return-void
.end method
