.class Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;
.super Landroid/media/session/MediaController$Callback;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field private mLastState:I

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastState(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;->mLastState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;Ljava/lang/String;)V
    .registers 3
    .param p2, "packageName"    # Ljava/lang/String;

    .line 863
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 864
    iput-object p2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;->mPackageName:Ljava/lang/String;

    .line 865
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;->mLastState:I

    .line 866
    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 4
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 870
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 871
    if-nez p1, :cond_10

    .line 872
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;->mLastState:I

    .line 873
    const-string v0, "MediaSessionMonitor"

    const-string v1, "PlaybackState Null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void

    .line 876
    :cond_10
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;->mLastState:I

    .line 878
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->-$$Nest$mupdateMediaSessionState(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)V

    .line 879
    return-void
.end method
