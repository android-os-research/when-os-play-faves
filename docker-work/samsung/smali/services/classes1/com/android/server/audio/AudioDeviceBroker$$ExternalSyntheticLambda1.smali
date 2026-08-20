.class public final synthetic Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceBroker;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceBroker;

    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->$r8$lambda$v9FTLXwh4FooFHGAscfdW8FffxU(Lcom/android/server/audio/AudioDeviceBroker;I)V

    return-void
.end method
