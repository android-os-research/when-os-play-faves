.class public final synthetic Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;

    iput-boolean p2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;->lambda$onCoverSwitchStateChanged$0$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService$12(ZI)V

    return-void
.end method
