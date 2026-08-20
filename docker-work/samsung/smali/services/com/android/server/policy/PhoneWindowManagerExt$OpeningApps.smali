.class public Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;
.super Lcom/android/server/policy/SideKeyDoublePress$Behavior;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpeningApps"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3689
    invoke-direct {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public launchApp(Landroid/view/KeyEvent;ZZLandroid/content/Intent;Landroid/content/Intent;)V
    .registers 6

    .line 3698
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p1

    if-nez p1, :cond_19

    if-eqz p3, :cond_f

    goto :goto_19

    .line 3703
    :cond_f
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_24

    .line 3700
    :cond_19
    :goto_19
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p4, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPendingIntentActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :goto_24
    return-void
.end method
