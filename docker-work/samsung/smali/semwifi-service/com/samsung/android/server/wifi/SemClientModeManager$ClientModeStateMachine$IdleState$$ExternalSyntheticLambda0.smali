.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/wifi/util/ScanPool$ScanFailedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;

    return-void
.end method


# virtual methods
.method public final onScanFailed(ILjava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->$r8$lambda$tnphwMVNm8sPVZ4nkOXDZ5glrrg(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;ILjava/lang/String;)V

    return-void
.end method
