.class public abstract Lcom/android/server/policy/SideKeyDoublePress$Behavior;
.super Ljava/lang/Object;
.source "SideKeyDoublePress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SideKeyDoublePress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Behavior"
.end annotation


# instance fields
.field public mAppInfo:Ljava/lang/String;

.field public mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doublePressLaunchPolicy(Z)Z
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->doublePressLaunchPolicy(I)Z

    move-result p0

    return p0
.end method

.method public getAction()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAppInfo:Ljava/lang/String;

    .line 141
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;Landroid/view/KeyEvent;Z)V
    .registers 12

    .line 146
    iput-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 147
    invoke-virtual {p0, p4}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->doublePressLaunchPolicy(Z)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 150
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->launchTargetAction(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToastIfNeeded(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 155
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    move-result-object v6

    .line 156
    invoke-virtual {p0, v6}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->needShowCoverToast(Landroid/content/Intent;)Z

    move-result v4

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "launch, needShowCoverToast="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " componentName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAppInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SideKeyDoublePress"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v5, p2

    .line 159
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->launchApp(Landroid/view/KeyEvent;ZZLandroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method public abstract launchApp(Landroid/view/KeyEvent;ZZLandroid/content/Intent;Landroid/content/Intent;)V
.end method

.method public launchTargetAction(Landroid/content/Intent;)V
    .registers 3

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Double Press Triggered.("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SideKeyDoublePress"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public needShowCoverToast(Landroid/content/Intent;)Z
    .registers 3

    .line 176
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_20

    .line 177
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isClearTypeCoverClosed()Z

    move-result p0

    if-eqz p0, :cond_20

    const-string/jumbo p0, "showCoverToast"

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "SideKeyDoublePress"

    const-string/jumbo p1, "neededShowCoverToast for cover"

    .line 179
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public setAppInfo(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAppInfo:Ljava/lang/String;

    return-object p0
.end method
