.class Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;
.super Ljava/lang/Object;
.source "SemPhotoRemasterManager.java"

# interfaces
.implements Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->setProgressUpdateListener(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mListener:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;

.field final synthetic blacklist this$0:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;

.field final synthetic blacklist val$listener:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;

    .line 385
    iput-object p1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->this$0:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;

    iput-object p2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->val$listener:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->mListener:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;

    return-void
.end method


# virtual methods
.method public blacklist onUpdateMetadata(Ljava/lang/String;)V
    .registers 3
    .param p1, "metadata"    # Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->mListener:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;->onUpdateMetadata(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public blacklist onUpdateProgress(DII)V
    .registers 6
    .param p1, "percent"    # D
    .param p3, "currentImageIndex"    # I
    .param p4, "totalImageCount"    # I

    .line 390
    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->mListener:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;->onUpdateProgress(DII)V

    .line 391
    return-void
.end method
