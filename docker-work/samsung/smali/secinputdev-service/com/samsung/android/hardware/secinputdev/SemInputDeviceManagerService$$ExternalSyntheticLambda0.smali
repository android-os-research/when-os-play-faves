.class public final synthetic Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;ZII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    iput-boolean p2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda0;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lambda$setDisplayStateToDevice$1$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(ZII)V

    return-void
.end method
