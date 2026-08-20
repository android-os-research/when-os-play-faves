.class public final synthetic Lcom/android/server/display/DisplayPowerController$BrightnessReason$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method
