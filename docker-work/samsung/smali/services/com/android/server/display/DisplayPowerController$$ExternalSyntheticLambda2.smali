.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;

.field public final synthetic f$1:Lcom/android/server/display/DisplayDevice;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/display/DisplayDeviceConfig;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Lcom/android/server/display/DisplayDeviceInfo;

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;IIZ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayPowerController;

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/display/DisplayDevice;

    iput-object p3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/display/DisplayDeviceConfig;

    iput-object p5, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$4:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/display/DisplayDeviceInfo;

    iput p7, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$6:I

    iput p8, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$7:I

    iput-boolean p9, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$8:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/display/DisplayDevice;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$4:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$6:I

    iget v7, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$7:I

    iget-boolean v8, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;->f$8:Z

    invoke-static/range {v0 .. v8}, Lcom/android/server/display/DisplayPowerController;->$r8$lambda$UYym6kik3PHnLK71lE8-Wsm-ins(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;IIZ)V

    return-void
.end method
