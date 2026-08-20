.class public final synthetic Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;IIZLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    iput p2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;->f$2:I

    iput-boolean p4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;->f$2:I

    iget-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lambda$setTspEnabled$2$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(IIZLjava/lang/String;)V

    return-void
.end method
