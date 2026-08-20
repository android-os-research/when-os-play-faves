.class public final synthetic Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/hardware/radio/ProgramSelector;


# direct methods
.method public synthetic constructor <init>(ILandroid/hardware/radio/ProgramSelector;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/radio/ProgramSelector;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;)V
    .registers 3

    iget v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;->f$0:I

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/radio/ProgramSelector;

    invoke-static {v0, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$lambda$9bhMG9UsQmr-IIUPki5E7YA6hRY(ILandroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ITunerCallback;)V

    return-void
.end method
