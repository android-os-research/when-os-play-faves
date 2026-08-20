.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/audio/AudioService;

    iput p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda11;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/audio/AudioService;

    iget p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda11;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/audio/AudioService;->$r8$lambda$zqmb-5gdFwjbAg8N5wKRgjnY8es(Lcom/android/server/audio/AudioService;I)V

    return-void
.end method
