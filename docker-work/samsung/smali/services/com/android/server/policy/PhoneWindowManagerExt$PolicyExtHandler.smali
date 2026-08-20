.class public Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PolicyExtHandler"
.end annotation


# static fields
.field public static final MSG_BLOCK_WAKEUP_TIMEOUT:I = 0x5

.field public static final MSG_KEYGUARD_TIMEOUT:I = 0x7

.field public static final MSG_RECONFIGURE_DISPLAY:I = 0x2

.field public static final MSG_RELEASE_VOLUME_UP_KEY_PRESSED:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 495
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 515
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_67

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1b

    const/4 p1, 0x7

    if-eq v0, p1, :cond_10

    goto :goto_82

    .line 546
    :cond_10
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fgetmKeyguardDelegate(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->doKeyguardTimeout(Landroid/os/Bundle;)V

    goto :goto_82

    .line 531
    :cond_1b
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p1, :cond_49

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Get MSG_BLOCK_WAKEUP_TIMEOUT, isFolded="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isFolded()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mFoldOpenCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fgetmFoldOpenCount(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneWindowManagerExt"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_49
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isFolded()Z

    move-result p1

    if-nez p1, :cond_61

    .line 537
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/16 v7, 0x9

    const-string v8, "android.policy:LID"

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 540
    :cond_61
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fputmFoldOpenCount(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_82

    .line 523
    :cond_67
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v0, :cond_82

    .line 524
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->reconfigureDisplay(I)V

    goto :goto_82

    .line 518
    :cond_7d
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fputmIsVolumeUpKeyPressed(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V

    :cond_82
    :goto_82
    return-void
.end method
