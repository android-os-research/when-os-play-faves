.class public final Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;
.super Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Stub;
.source "MusicRecognitionManagerPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MusicRecognitionServiceCallback"
.end annotation


# instance fields
.field public final mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

.field public final synthetic this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;


# direct methods
.method public static bridge synthetic -$$Nest$mgetClientCallback(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;)Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->getClientCallback()Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;)V
    .registers 3

    .line 306
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Stub;-><init>()V

    .line 307
    iput-object p2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;)V

    return-void
.end method


# virtual methods
.method public final getClientCallback()Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    return-object p0
.end method

.method public onRecognitionFailed(I)V
    .registers 3

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    invoke-interface {v0, p1}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    .line 328
    :catch_5
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    invoke-static {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->-$$Nest$mdestroyService(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;)V

    return-void
.end method

.method public onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .registers 4

    .line 313
    :try_start_0
    invoke-static {p2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->-$$Nest$smsanitizeBundle(Landroid/os/Bundle;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_8

    .line 318
    :catch_8
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    invoke-static {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->-$$Nest$mdestroyService(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;)V

    return-void
.end method
