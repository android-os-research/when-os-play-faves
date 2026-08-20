.class public Lcom/android/server/policy/PhoneWindowManagerExt$QuickSwitch;
.super Lcom/android/server/policy/SideKeyDoublePress$Behavior;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickSwitch"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4207
    invoke-direct {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;-><init>()V

    return-void
.end method


# virtual methods
.method public doublePressLaunchPolicy(Z)Z
    .registers 2

    .line 4216
    invoke-super {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->doublePressLaunchPolicy(Z)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public launchApp(Landroid/view/KeyEvent;ZZLandroid/content/Intent;Landroid/content/Intent;)V
    .registers 6

    .line 4211
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$mlaunchSecureFolder(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-void
.end method
