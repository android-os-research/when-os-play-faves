.class public Lcom/android/server/am/MARsTrigger$12;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .registers 2

    .line 699
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$12;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_43

    .line 702
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_43

    .line 705
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 707
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x0

    const-string/jumbo v0, "reason"

    .line 708
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_43

    const-string p1, "MARsTrigger"

    const-string p2, "disable ultra power saving mode"

    .line 711
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez p1, :cond_3c

    .line 713
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$12;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {p0}, Lcom/android/server/am/MARsTrigger;->unregisterEmStateReceiver()V

    .line 718
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->postInit(Z)V

    goto :goto_43

    .line 721
    :cond_3c
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->setSubUserIds()V

    :cond_43
    :goto_43
    return-void
.end method
