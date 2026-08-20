.class public Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PolicyHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 738
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 741
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "WindowManager"

    packed-switch v0, :pswitch_data_c4

    :pswitch_8
    goto/16 :goto_c3

    .line 802
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleRingerChordGesture(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_c3

    .line 770
    :pswitch_11
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 771
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 772
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    goto/16 :goto_c3

    .line 799
    :pswitch_24
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    goto/16 :goto_c3

    .line 796
    :pswitch_2b
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$msendSystemKeyToStatusBar(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto/16 :goto_c3

    .line 793
    :pswitch_34
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManagerInternal;->onBackKeyPressed()V

    goto/16 :goto_c3

    .line 788
    :pswitch_3d
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmAccessibilityShortcutController(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 789
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$maccessibilityShortcutActivated(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_c3

    .line 785
    :pswitch_50
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mrequestBugreportForTv(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_c3

    .line 782
    :pswitch_57
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$maccessibilityShortcutActivated(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_c3

    .line 805
    :pswitch_5d
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleScreenShot(Lcom/android/server/policy/PhoneWindowManager;II)V

    goto :goto_c3

    .line 779
    :pswitch_67
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mshowPictureInPictureMenuInternal(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_c3

    .line 776
    :pswitch_6d
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssistWithWakeLock()V

    goto :goto_c3

    .line 767
    :pswitch_73
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleHideBootMessage(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_c3

    .line 752
    :pswitch_79
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_c3

    .line 749
    :pswitch_7f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mshowRecentApps(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto :goto_c3

    .line 763
    :pswitch_85
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_8e

    const-string v0, "Setting mWindowManagerDrawComplete"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_8e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mfinishWindowsDrawn(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto :goto_c3

    :pswitch_96
    const-string p1, "Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    .line 759
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_c3

    .line 755
    :pswitch_a1
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz p1, :cond_aa

    const-string p1, "Setting mKeyguardDrawComplete"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_aa
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_c3

    .line 746
    :pswitch_b0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_c3

    .line 743
    :pswitch_ba
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    :cond_c3
    :goto_c3
    return-void

    :pswitch_data_c4
    .packed-switch 0x3
        :pswitch_ba
        :pswitch_b0
        :pswitch_a1
        :pswitch_96
        :pswitch_85
        :pswitch_8
        :pswitch_7f
        :pswitch_79
        :pswitch_73
        :pswitch_6d
        :pswitch_8
        :pswitch_8
        :pswitch_67
        :pswitch_5d
        :pswitch_57
        :pswitch_50
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_24
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method
