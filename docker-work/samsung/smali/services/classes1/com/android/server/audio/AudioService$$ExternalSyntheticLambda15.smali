.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/audio/AudioService;

    iput p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;->f$1:I

    iput p3, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;->f$1:I

    iget p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/audio/AudioService;->$r8$lambda$3H2uN4cgsLeO4MZQKovZ94OgFZk(Lcom/android/server/audio/AudioService;II)V

    return-void
.end method
