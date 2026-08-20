.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioDeviceAttributes;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioDeviceAttributes;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceAttributes;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;->f$1:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceAttributes;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;->f$1:[I

    check-cast p1, Landroid/media/IMuteAwaitConnectionCallback;

    invoke-static {v0, p0, p1}, Lcom/android/server/audio/AudioService;->$r8$lambda$tfNIS9p28pT5AgFjayVq_X0pOeU(Landroid/media/AudioDeviceAttributes;[ILandroid/media/IMuteAwaitConnectionCallback;)V

    return-void
.end method
