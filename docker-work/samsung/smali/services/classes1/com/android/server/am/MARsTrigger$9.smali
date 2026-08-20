.class public Lcom/android/server/am/MARsTrigger$9;
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

    .line 619
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$9;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-eqz p2, :cond_ad

    .line 622
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    goto/16 :goto_ad

    .line 624
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "android.intent.extra.user_handle"

    .line 625
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserActionReceiver : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsTrigger"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.USER_STOPPED"

    .line 628
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x63

    const-string/jumbo v2, "user"

    const/16 v3, 0x5f

    if-eqz v0, :cond_6c

    const/4 p0, 0x0

    if-lt p2, v3, :cond_50

    if-gt p2, v1, :cond_50

    .line 630
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsPolicyManager;->setDualAppEnabled(Z)V

    goto :goto_ad

    .line 632
    :cond_50
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    if-eqz p1, :cond_ad

    .line 634
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_ad

    .line 635
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 636
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/MARsPolicyManager;->setManagedProfileEnabled(ZI)V

    goto :goto_ad

    :cond_6c
    const-string v0, "android.intent.action.USER_ADDED"

    .line 640
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ad

    const/4 p0, 0x1

    if-lt p2, v3, :cond_92

    if-gt p2, v1, :cond_92

    .line 642
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsPolicyManager;->setDualAppEnabled(Z)V

    .line 643
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getDualAppUserId()I

    move-result p0

    if-eq p2, p0, :cond_ad

    .line 644
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/MARsPolicyManager;->setDualAppUserId(I)V

    goto :goto_ad

    .line 646
    :cond_92
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    if-eqz p1, :cond_ad

    .line 648
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_ad

    .line 649
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 650
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/MARsPolicyManager;->setManagedProfileEnabled(ZI)V

    :cond_ad
    :goto_ad
    return-void
.end method
