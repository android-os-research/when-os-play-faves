.class public final synthetic Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iput p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->$r8$lambda$LslWh4hhYFjFFwmSSc2-r8ZXWXk(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    return-void
.end method
