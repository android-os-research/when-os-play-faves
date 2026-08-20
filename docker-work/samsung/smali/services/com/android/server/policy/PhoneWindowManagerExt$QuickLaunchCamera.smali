.class public Lcom/android/server/policy/PhoneWindowManagerExt$QuickLaunchCamera;
.super Lcom/android/server/policy/SideKeyDoublePress$Behavior;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickLaunchCamera"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3754
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

    .line 3768
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleDoublePressLaunchCamera(I)V

    return-void
.end method

.method public launchTargetAction(Landroid/content/Intent;)V
    .registers 2

    .line 3762
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAppInfo:Ljava/lang/String;

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method

.method public needShowCoverToast(Landroid/content/Intent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
