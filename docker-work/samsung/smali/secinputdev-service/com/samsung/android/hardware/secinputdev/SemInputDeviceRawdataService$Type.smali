.class public abstract enum Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;
.super Ljava/lang/Enum;
.source "SemInputDeviceRawdataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

.field public static final enum CALLBACK:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

.field public static final enum LISTENER:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

.field public static final enum SETTING:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 372
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$1;

    const-string v1, "CALLBACK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$1;-><init>(Ljava/lang/String;IILcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$1-IA;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->CALLBACK:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    .line 383
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$2;

    const-string v5, "SETTING"

    const/4 v6, 0x2

    invoke-direct {v1, v5, v3, v6, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$2;-><init>(Ljava/lang/String;IILcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$2-IA;)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->SETTING:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    .line 394
    new-instance v5, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$3;

    const-string v7, "LISTENER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v6, v8, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$3;-><init>(Ljava/lang/String;IILcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type$3-IA;)V

    sput-object v5, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->LISTENER:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    .line 371
    new-array v4, v8, [Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    aput-object v5, v4, v6

    sput-object v4, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 408
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 409
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->value:I

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 371
    const-class v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;
    .registers 1

    .line 371
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    return-object v0
.end method


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public getValue()I
    .registers 2

    .line 413
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->value:I

    return v0
.end method
