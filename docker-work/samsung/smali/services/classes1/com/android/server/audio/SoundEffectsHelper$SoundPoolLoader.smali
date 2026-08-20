.class public Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SoundEffectsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundPoolLoader"
.end annotation


# instance fields
.field public mLoadCompleteHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .registers 3

    .line 561
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 567
    invoke-static {p1}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$fgetmSoundPool(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method


# virtual methods
.method public addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 572
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public onComplete(Z)V
    .registers 4

    .line 617
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v0}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$fgetmSoundPool(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 618
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v0}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$fgetmSoundPool(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 620
    :cond_12
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 621
    invoke-interface {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    goto :goto_18

    .line 623
    :cond_28
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effects loading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_39

    const-string p1, "completed"

    goto :goto_3b

    :cond_39
    const-string p1, "failed"

    :goto_3b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$mlogEvent(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 10

    const-string p1, "effect "

    const/4 v0, 0x0

    if-nez p3, :cond_66

    .line 580
    iget-object p3, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {p3}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$fgetmResources(Lcom/android/server/audio/SoundEffectsHelper;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_f
    :goto_f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_60

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 581
    iget v3, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-ne v3, p2, :cond_55

    iget-boolean v3, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-nez v3, :cond_55

    .line 582
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " loaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$mlogEvent(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V

    .line 583
    iput-boolean v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 585
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_EXTENSION_SITUATION_VOLUME:Z

    if-eqz v2, :cond_55

    iget-boolean v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mHasSituationVolume:Z

    if-eqz v2, :cond_55

    .line 586
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v2}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$fgetmSoundPool(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;

    move-result-object v2

    const-string/jumbo v3, "stv_touch_tone"

    invoke-virtual {v2, p2, v3}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    .line 590
    :cond_55
    iget v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v2, :cond_f

    iget-boolean v1, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-nez v1, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_60
    if-nez v0, :cond_c5

    .line 595
    invoke-virtual {p0, v2}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    goto :goto_c5

    .line 598
    :cond_66
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v1, p2}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$mfindResourceBySampleId(Lcom/android/server/audio/SoundEffectsHelper;I)Lcom/android/server/audio/SoundEffectsHelper$Resource;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 601
    iget-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {p2, v1}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$mgetResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object p2

    goto :goto_87

    .line 603
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "with unknown sample ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 605
    :goto_87
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " loading failed, status "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$mlogEvent(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V

    .line 606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLoadSoundEffects(), Error "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " while loading sample "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AS.SfxHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    :cond_c5
    :goto_c5
    return-void
.end method

.method public onTimeout()V
    .registers 2

    const/4 v0, 0x0

    .line 613
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    return-void
.end method
