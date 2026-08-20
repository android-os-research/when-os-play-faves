.class public Lcom/android/server/am/MARsTrigger$10;
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

    .line 659
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$10;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_68

    .line 662
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_68

    .line 664
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcast received action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsTrigger"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 667
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, 0x0

    .line 668
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 669
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mContext.id = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$10;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz p0, :cond_5a

    .line 672
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdateCompHistory(Z)V

    .line 675
    :cond_5a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->switchUser(I)V

    .line 676
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateNotiTimeMsgToMainHandler(I)V

    :cond_68
    :goto_68
    return-void
.end method
