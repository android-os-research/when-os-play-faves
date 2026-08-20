.class public final synthetic Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(Landroid/os/CancellationSignal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;->f$0:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;->f$0:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method
