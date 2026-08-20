.class public Lcom/android/server/am/MARsTrigger$7;
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

    .line 561
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$7;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-eqz p2, :cond_76

    .line 564
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_76

    .line 566
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.server.am.MARS_TRIGGER_MPSM_POLICY"

    .line 567
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PACKAGE_NAME"

    const/16 v2, 0xa

    if-eqz v0, :cond_42

    const-string v0, "MARsTrigger"

    const-string v3, "broadcast received action : MARS_TRIGGER_MPSM_POLICY"

    .line 570
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_76

    .line 573
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_76

    .line 575
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$7;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 576
    invoke-static {v1, p1}, Lcom/android/server/am/MARsTrigger;->-$$Nest$mactionToString(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$7;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p2, v2, p1, p0}, Lcom/android/server/am/MARsHandler;->sendRunPolicySepcificPkgMsgToMainHandler(Ljava/util/ArrayList;ILjava/lang/String;I)V

    goto :goto_76

    :cond_42
    const-string v0, "com.android.server.am.MARS_CANCEL_MPSM_POLICY"

    .line 580
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 581
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 583
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_76

    .line 585
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$7;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p2, p1, v2, p0}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(Ljava/util/ArrayList;II)V

    goto :goto_76

    .line 589
    :cond_66
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$7;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p1, p2, v2, p0}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(Ljava/util/ArrayList;II)V

    :cond_76
    :goto_76
    return-void
.end method
