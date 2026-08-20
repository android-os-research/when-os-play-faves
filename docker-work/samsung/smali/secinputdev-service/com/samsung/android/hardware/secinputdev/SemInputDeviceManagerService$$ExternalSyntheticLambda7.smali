.class public final synthetic Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    iput p2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda7;->f$1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lambda$setSipMode$4$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(I)V

    return-void
.end method
