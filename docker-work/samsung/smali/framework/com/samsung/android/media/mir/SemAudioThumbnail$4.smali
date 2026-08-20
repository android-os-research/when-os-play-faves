.class Lcom/samsung/android/media/mir/SemAudioThumbnail$4;
.super Ljava/lang/Thread;
.source "SemAudioThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/media/mir/SemAudioThumbnail;
    .param p2, "name"    # Ljava/lang/String;

    .line 470
    iput-object p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 475
    iget-object v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetlastError(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;->onError(I)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_1b

    .line 478
    :catch_18
    move-exception v0

    goto :goto_1c

    .line 477
    :catch_1a
    move-exception v0

    .line 479
    :cond_1b
    :goto_1b
    nop

    .line 480
    :goto_1c
    return-void
.end method
