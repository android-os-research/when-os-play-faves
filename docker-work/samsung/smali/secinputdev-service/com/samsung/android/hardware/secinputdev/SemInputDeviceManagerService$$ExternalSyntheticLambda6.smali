.class public final synthetic Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lambda$registerServiceListener$0$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(Ljava/lang/Boolean;)V

    return-void
.end method
