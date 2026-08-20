.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;
.super Ljava/lang/Object;
.source "SoundTriggerHalConcurrentCaptureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadedModel"
.end annotation


# instance fields
.field public final callback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

.field public final type:I


# direct methods
.method public constructor <init>(ILcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;->type:I

    .line 85
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;->callback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    return-void
.end method
