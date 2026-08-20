.class public final synthetic Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

.field public final synthetic f$1:Lcom/samsung/android/media/AudioParameter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/media/AudioParameter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/media/AudioParameter;

    invoke-static {v0, p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->$r8$lambda$yS6Pqj21jVt2l-fBFTTEmt_aX4g(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;)V

    return-void
.end method
