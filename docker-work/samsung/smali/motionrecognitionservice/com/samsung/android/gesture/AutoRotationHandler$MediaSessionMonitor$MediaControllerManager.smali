.class Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;
.super Ljava/lang/Object;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaControllerManager"
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;

.field private mController:Landroid/media/session/MediaController;

.field final synthetic this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;)Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->mCallback:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmController(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;)Landroid/media/session/MediaController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->mController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;Landroid/media/session/MediaController;)V
    .registers 5
    .param p2, "controller"    # Landroid/media/session/MediaController;

    .line 835
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->mController:Landroid/media/session/MediaController;

    .line 838
    :try_start_7
    new-instance v0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;

    invoke-virtual {p2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->mCallback:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;

    .line 839
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->mController:Landroid/media/session/MediaController;

    invoke-static {p1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->-$$Nest$fgetmMediaSessionHandler(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1c

    .line 842
    goto :goto_26

    .line 840
    :catch_1c
    move-exception p1

    .line 841
    .local p1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_26
    return-void
.end method


# virtual methods
.method public release()V
    .registers 4

    .line 846
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->mController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->mCallback:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;

    if-eqz v1, :cond_16

    .line 848
    :try_start_8
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 851
    goto :goto_16

    .line 849
    :catch_c
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16
    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->mCallback:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;

    .line 855
    iput-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->mController:Landroid/media/session/MediaController;

    .line 856
    return-void
.end method
