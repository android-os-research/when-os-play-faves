.class public Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WindowMagnificationPromptController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationActionReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    return-void

    .line 197
    :cond_b
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->-$$Nest$fputmNeedToShowNotification(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;Z)V

    .line 198
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-static {p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->-$$Nest$fgetmUserId(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)I

    move-result v1

    const-string v2, "accessibility_show_window_magnification_prompt"

    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p2, "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

    .line 201
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 202
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->-$$Nest$mlaunchMagnificationSettings(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V

    .line 203
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->-$$Nest$mdismissNotification(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V

    goto :goto_46

    :cond_39
    const-string p2, "com.android.server.accessibility.magnification.action.DISMISS"

    .line 204
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 205
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->-$$Nest$mdismissNotification(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V

    :cond_46
    :goto_46
    return-void
.end method
