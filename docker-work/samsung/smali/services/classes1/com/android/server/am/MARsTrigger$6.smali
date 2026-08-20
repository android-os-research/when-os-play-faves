.class public Lcom/android/server/am/MARsTrigger$6;
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

    .line 518
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_b0

    .line 521
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    goto/16 :goto_b0

    :cond_a
    const-string/jumbo p1, "package"

    .line 524
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    const-string v0, "com.samsung.android.game.gos"

    .line 525
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    return-void

    .line 528
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    .line 529
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x9

    if-eqz v0, :cond_7c

    .line 530
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_b0

    const-string/jumbo v0, "survive_app"

    .line 532
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v2, "lru_num"

    .line 533
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 534
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->setProtectAppCntForGame(I)V

    .line 536
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p2

    if-eqz p2, :cond_66

    .line 537
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/FreecessController;->getEnableOLAFwithoutBGFreeze()Z

    move-result p2

    if-nez p2, :cond_66

    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_SUPPORT_CALM_MODE:Z

    if-nez p2, :cond_5e

    goto :goto_66

    .line 542
    :cond_5e
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessHandler;->sendCalmModeTriggerMsg(Ljava/util/ArrayList;)V

    goto :goto_b0

    .line 538
    :cond_66
    :goto_66
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 539
    invoke-static {v2, p1}, Lcom/android/server/am/MARsTrigger;->-$$Nest$mactionToString(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p2, v0, v1, p1, p0}, Lcom/android/server/am/MARsHandler;->sendRunPolicySepcificPkgMsgToMainHandler(Ljava/util/ArrayList;ILjava/lang/String;I)V

    goto :goto_b0

    :cond_7c
    const-string p0, "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

    .line 545
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b0

    .line 546
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isCalmModeOnoff()Z

    move-result p0

    if-nez p0, :cond_a2

    .line 547
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-nez p0, :cond_a9

    .line 548
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(Ljava/util/ArrayList;II)V

    goto :goto_a9

    .line 552
    :cond_a2
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->sendCalmModeCancelMsg()V

    :cond_a9
    :goto_a9
    const-string p0, "MARsTrigger"

    const-string p1, "broadcast received action : MARS_CANCEL_GAME_MODE_POLICY"

    .line 554
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    :goto_b0
    return-void
.end method
