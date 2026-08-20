.class public Lcom/android/server/notification/EasyMuteController$1;
.super Ljava/lang/Object;
.source "EasyMuteController.java"

# interfaces
.implements Lcom/samsung/android/gesture/SemMotionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EasyMuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EasyMuteController;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .registers 4

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_9

    goto :goto_3e

    :cond_9
    const-string p1, "EasyMuteController"

    const-string v0, "SemMotionRecognitionEvent.FLIP_SCREEN_DOWN"

    .line 87
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_10
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v0}, Lcom/android/server/notification/EasyMuteController;->-$$Nest$fgetmAudioManager(Lcom/android/server/notification/EasyMuteController;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 91
    invoke-interface {v0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_2f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_2d

    .line 96
    :cond_1f
    iget-object p1, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {p1}, Lcom/android/server/notification/EasyMuteController;->-$$Nest$fgetmIsRegister(Lcom/android/server/notification/EasyMuteController;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 97
    :goto_27
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_3e

    :catchall_2d
    move-exception p1

    goto :goto_3f

    :catch_2f
    move-exception v0

    :try_start_30
    const-string v1, "Remote exception"

    .line 94
    invoke-static {p1, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_2d

    .line 96
    iget-object p1, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {p1}, Lcom/android/server/notification/EasyMuteController;->-$$Nest$fgetmIsRegister(Lcom/android/server/notification/EasyMuteController;)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_27

    :cond_3e
    :goto_3e
    return-void

    :goto_3f
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v0}, Lcom/android/server/notification/EasyMuteController;->-$$Nest$fgetmIsRegister(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 97
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 99
    :cond_4c
    throw p1
.end method
