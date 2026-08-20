.class public Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
.super Landroid/os/Handler;
.source "SoundEffectsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SoundEffectsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SfxHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .registers 2

    .line 525
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SfxHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 528
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_35

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 p1, 0x3

    if-eq v0, p1, :cond_e

    goto :goto_3e

    .line 547
    :cond_e
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {p1}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$fgetmSoundPoolLoader(Lcom/android/server/audio/SoundEffectsHelper;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 548
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {p0}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$fgetmSoundPoolLoader(Lcom/android/server/audio/SoundEffectsHelper;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onTimeout()V

    goto :goto_3e

    .line 536
    :cond_20
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 537
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;II)V

    invoke-static {v1, v2}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$monLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    goto :goto_3e

    .line 533
    :cond_2f
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    goto :goto_3e

    .line 530
    :cond_35
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    invoke-static {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$monLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    :cond_3e
    :goto_3e
    return-void
.end method
