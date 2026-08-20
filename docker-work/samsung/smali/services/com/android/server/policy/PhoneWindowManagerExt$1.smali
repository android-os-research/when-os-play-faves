.class public Lcom/android/server/policy/PhoneWindowManagerExt$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 1921
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1923
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 1924
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 1925
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    .line 1926
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v0, :cond_37

    .line 1928
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->getPenState()I

    move-result p1

    .line 1929
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fgetmPenState(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v0

    if-eq p1, v0, :cond_37

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fgetmPenType(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_37

    .line 1930
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-wide/16 v1, 0x0

    if-ne p1, p2, :cond_33

    goto :goto_34

    :cond_33
    const/4 p2, 0x0

    :goto_34
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->notifyPenSwitchChanged(JZ)V

    .line 1934
    :cond_37
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/OneHandOpPolicy;->systemBooted()V

    :cond_44
    return-void
.end method
