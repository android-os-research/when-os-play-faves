.class public Lcom/android/server/policy/PhoneWindowManagerExt$OpeningTorch;
.super Lcom/android/server/policy/SideKeyDoublePress$Behavior;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpeningTorch"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3877
    invoke-direct {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;-><init>()V

    return-void
.end method


# virtual methods
.method public launchApp(Landroid/view/KeyEvent;ZZLandroid/content/Intent;Landroid/content/Intent;)V
    .registers 6

    .line 3881
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fgetmFlashLight(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->handleTorchKey()V

    return-void
.end method
