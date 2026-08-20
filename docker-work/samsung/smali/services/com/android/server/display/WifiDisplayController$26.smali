.class public Lcom/android/server/display/WifiDisplayController$26;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->wakeUpScreen()V
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

    .line 2051
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "wakeUpScreen"

    .line 2054
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2056
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2057
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmScreenWakeUpByUser(Lcom/android/server/display/WifiDisplayController;Z)V

    goto :goto_34

    .line 2059
    :cond_24
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmScreenWakeUpByUser(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2060
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const-string v4, "WifiDisplay WakeUpScreen"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2063
    :goto_34
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 2064
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    return-void
.end method
