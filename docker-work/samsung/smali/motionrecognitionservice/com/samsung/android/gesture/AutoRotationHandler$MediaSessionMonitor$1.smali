.class Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;
.super Ljava/lang/Object;
.source "AutoRotationHandler.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    .line 674
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onActiveSessionsChanged$0(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;Landroid/media/session/MediaController;)Z
    .registers 4
    .param p0, "manager"    # Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 691
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->-$$Nest$fgetmController(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;)Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onActiveSessionsChanged$1(Landroid/media/session/MediaController;Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;)Z
    .registers 4
    .param p0, "controller"    # Landroid/media/session/MediaController;
    .param p1, "controllerManager"    # Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;

    .line 706
    invoke-static {p1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->-$$Nest$fgetmController(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;)Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 677
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    if-nez p1, :cond_2b

    .line 678
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->-$$Nest$fgetmControllerList(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;

    .line 679
    .local v1, "manager":Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;
    invoke-virtual {v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->release()V

    .line 680
    .end local v1    # "manager":Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;
    goto :goto_c

    .line 681
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->-$$Nest$fgetmControllerList(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 682
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->-$$Nest$mupdateMediaSessionState(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)V

    .line 683
    return-void

    .line 686
    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->-$$Nest$fgetmControllerList(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 687
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;>;"
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "MediaSessionMonitor"

    if-eqz v1, :cond_64

    .line 688
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;

    .line 689
    .restart local v1    # "manager":Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;
    const/4 v3, 0x0

    .line 691
    .local v3, "noneMatch":Z
    :try_start_44
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_51} :catch_5b

    .line 695
    .end local v3    # "noneMatch":Z
    .local v2, "noneMatch":Z
    nop

    .line 697
    if-eqz v2, :cond_5a

    .line 698
    invoke-virtual {v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->release()V

    .line 699
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 701
    .end local v1    # "manager":Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;
    .end local v2    # "noneMatch":Z
    :cond_5a
    goto :goto_35

    .line 692
    .restart local v1    # "manager":Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;
    .restart local v3    # "noneMatch":Z
    :catch_5b
    move-exception v4

    .line 693
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    goto :goto_35

    .line 703
    .end local v1    # "manager":Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;
    .end local v3    # "noneMatch":Z
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;

    .line 704
    .local v3, "controller":Landroid/media/session/MediaController;
    const/4 v4, 0x0

    .line 706
    .local v4, "noneMatch":Z
    :try_start_75
    iget-object v5, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-static {v5}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->-$$Nest$fgetmControllerList(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1$$ExternalSyntheticLambda1;-><init>(Landroid/media/session/MediaController;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v5
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_88} :catch_9d

    move v4, v5

    .line 710
    nop

    .line 712
    if-eqz v4, :cond_9c

    .line 713
    iget-object v5, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-static {v5}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->-$$Nest$fgetmControllerList(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)Ljava/util/Set;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;

    iget-object v7, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-direct {v6, v7, v3}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;Landroid/media/session/MediaController;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 715
    .end local v3    # "controller":Landroid/media/session/MediaController;
    .end local v4    # "noneMatch":Z
    :cond_9c
    goto :goto_68

    .line 707
    .restart local v3    # "controller":Landroid/media/session/MediaController;
    .restart local v4    # "noneMatch":Z
    :catch_9d
    move-exception v5

    .line 708
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    goto :goto_68

    .line 716
    .end local v3    # "controller":Landroid/media/session/MediaController;
    .end local v4    # "noneMatch":Z
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a6
    return-void
.end method
