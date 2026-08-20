.class public Lcom/android/server/am/MARsTrigger$11;
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

    .line 682
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_52

    .line 685
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_52

    .line 687
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mAppStartUpIntentReceiver onReceive : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MARsTrigger"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 689
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    const-string p2, "android.intent.action.REBOOT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 690
    :cond_34
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/am/mars/MARsBigData;->getInstance(Landroid/content/Context;)Lcom/android/server/am/mars/MARsBigData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsBigData;->sendBigDataInfoToHQM()V

    .line 691
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->updateResetTime()V

    .line 692
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz p0, :cond_52

    .line 693
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdateCompHistory(Z)V

    :cond_52
    :goto_52
    return-void
.end method
