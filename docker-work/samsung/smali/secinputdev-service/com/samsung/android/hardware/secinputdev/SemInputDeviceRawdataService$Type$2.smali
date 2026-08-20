.class final enum Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$2;
.super Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;
.source "SemInputDeviceRawdataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p3, "value"    # I

    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;-><init>(Ljava/lang/String;IILcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$2-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$2;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    .line 388
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->-$$Nest$sfgetenabledBySettings()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->-$$Nest$sfputenabledBySettings(I)V

    .line 389
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->-$$Nest$sfgetenabledBySettings()I

    move-result v0

    if-gez v0, :cond_13

    .line 390
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->-$$Nest$sfputenabledBySettings(I)V

    .line 392
    :cond_13
    return-void
.end method

.method public enable()V
    .registers 2

    .line 385
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->-$$Nest$sfgetenabledBySettings()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->-$$Nest$sfputenabledBySettings(I)V

    .line 386
    return-void
.end method
