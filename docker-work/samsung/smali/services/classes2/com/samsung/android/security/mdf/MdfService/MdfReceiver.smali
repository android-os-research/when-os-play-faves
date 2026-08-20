.class public Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdfReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "MdfService"

    const-string/jumbo v1, "onReceive"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    move-result-object p1

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    const-string p2, "Send Samsung Analytics log"

    .line 21
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;-><init>(Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;)V

    const-wide/32 p0, 0x493e0

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    :cond_2e
    const-string p0, "Invalid action"

    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void
.end method
