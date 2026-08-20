.class public Lcom/android/server/desktopmode/CoverStateManager$Authenticator;
.super Landroid/content/BroadcastReceiver;
.source "CoverStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Authenticator"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method public static synthetic $r8$lambda$x1llBurA0UAw7Rb2N4O-pdkXvNU(Lcom/android/server/desktopmode/CoverStateManager$Authenticator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->lambda$initialize$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;Lcom/android/server/desktopmode/CoverStateManager$Authenticator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    return-void
.end method

.method private synthetic lambda$initialize$0()V
    .registers 4

    .line 163
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cover auth timeout, mAuthComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmAuthComplete(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_22
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmAuthComplete(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 165
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthCompleteAndResetCallbacksReceiver()V

    :cond_2d
    return-void
.end method


# virtual methods
.method public initialize()V
    .registers 8

    .line 141
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->isAuthNeeded()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 142
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_STOPPED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmInputManagerService(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/android/server/input/InputManagerService;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 147
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmInputManagerService(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/android/server/input/InputManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;-><init>(Lcom/android/server/desktopmode/CoverStateManager$Authenticator;)V

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setDesktopModeServiceCallbacks(Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;)V

    .line 161
    :cond_31
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/CoverStateManager$Authenticator;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4f

    .line 169
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthComplete()V

    :goto_4f
    return-void
.end method

.method public isAuthNeeded()Z
    .registers 5

    .line 174
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmIsNfcAuthSystemFeatureEnabled(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmInputManagerService(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/android/server/input/InputManagerService;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmInputManagerService(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/android/server/input/InputManagerService;

    move-result-object p0

    const/4 v0, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x1b

    .line 175
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0

    if-ne p0, v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 200
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_21

    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive(), action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_21
    iget-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthCompleteAndResetCallbacksReceiver()V

    return-void
.end method

.method public setAuthComplete()V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 182
    :try_start_7
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmAuthComplete(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 183
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fputmAuthComplete(Lcom/android/server/desktopmode/CoverStateManager;Z)V

    .line 184
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$minitializeCoverState(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 186
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/android/server/desktopmode/IStateManager;->notifyScheduleUpdateDesktopMode(Z)V

    .line 189
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public setAuthCompleteAndResetCallbacksReceiver()V
    .registers 3

    .line 193
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthComplete()V

    .line 194
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmInputManagerService(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/android/server/input/InputManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setDesktopModeServiceCallbacks(Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
