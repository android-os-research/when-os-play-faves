.class public final synthetic Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/media/session/MediaController;


# direct methods
.method public synthetic constructor <init>(Landroid/media/session/MediaController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1$$ExternalSyntheticLambda1;->f$0:Landroid/media/session/MediaController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1$$ExternalSyntheticLambda1;->f$0:Landroid/media/session/MediaController;

    check-cast p1, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;

    invoke-static {v0, p1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;->lambda$onActiveSessionsChanged$1(Landroid/media/session/MediaController;Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;)Z

    move-result p1

    return p1
.end method
