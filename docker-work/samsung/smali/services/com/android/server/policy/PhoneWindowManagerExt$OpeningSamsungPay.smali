.class public Lcom/android/server/policy/PhoneWindowManagerExt$OpeningSamsungPay;
.super Lcom/android/server/policy/SideKeyDoublePress$Behavior;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpeningSamsungPay"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3708
    invoke-direct {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    .line 3716
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAppInfo:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 3717
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10200000

    .line 3718
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public launchApp(Landroid/view/KeyEvent;ZZLandroid/content/Intent;Landroid/content/Intent;)V
    .registers 6

    if-eqz p3, :cond_15

    const/4 p1, 0x1

    const-string/jumbo p2, "ignoreUnlock"

    .line 3733
    invoke-virtual {p5, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3734
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p4, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPendingIntentActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_1e

    .line 3737
    :cond_15
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1e
    return-void
.end method

.method public needShowCoverToast(Landroid/content/Intent;)Z
    .registers 3

    .line 3743
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_20

    .line 3744
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isClearTypeCoverClosed()Z

    move-result p0

    if-eqz p0, :cond_20

    const-string/jumbo p0, "showCoverToast"

    const/4 v0, 0x1

    .line 3745
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "PhoneWindowManagerExt"

    const-string/jumbo p1, "neededShowCoverToast for cover"

    .line 3746
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method
