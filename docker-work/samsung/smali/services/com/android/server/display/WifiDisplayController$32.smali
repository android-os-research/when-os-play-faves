.class public Lcom/android/server/display/WifiDisplayController$32;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .line 2180
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 2183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    .line 2184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "swipe"

    const-string/jumbo v2, "keyguard"

    const-string v3, "WifiDisplayController"

    const-string/jumbo v4, "usls"

    if-eqz v0, :cond_74

    .line 2185
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 2186
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_c2

    const/4 p1, 0x0

    const-string v0, "bouncerShowing"

    .line 2187
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 2188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received KEYGUARD_STATE_UPDATE = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_53

    .line 2190
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mgetScreenLockType(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c2

    .line 2192
    :cond_53
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 2193
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 2194
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p0, v4, v1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c2

    .line 2196
    :cond_6b
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo p1, "none"

    invoke-virtual {p0, v4, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c2

    :cond_74
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 2200
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 2201
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmScreenWakeUpByUser(Lcom/android/server/display/WifiDisplayController;)Z

    move-result p1

    if-eqz p1, :cond_a1

    const-string p1, "Received ACTION_SCREEN_ON by user"

    .line 2202
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 2204
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 2205
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p0, v4, v1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c2

    :cond_a1
    const-string p1, "Received ACTION_SCREEN_ON by controller"

    .line 2208
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmScreenWakeUpByUser(Lcom/android/server/display/WifiDisplayController;Z)V

    goto :goto_c2

    :cond_ad
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 2211
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c2

    const-string p1, "Received ACTION_SCREEN_OFF"

    .line 2212
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo p1, "screen_off"

    invoke-virtual {p0, v4, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c2
    :goto_c2
    return-void
.end method
