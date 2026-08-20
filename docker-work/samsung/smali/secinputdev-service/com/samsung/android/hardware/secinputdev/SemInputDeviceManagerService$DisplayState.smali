.class final enum Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;
.super Ljava/lang/Enum;
.source "SemInputDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DisplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

.field public static final enum DOZE:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

.field public static final enum DOZE_SUSPEND:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

.field public static final enum NONE:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

.field public static final enum OFF:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

.field public static final enum ON:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 845
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->NONE:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    .line 846
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    const-string v3, "OFF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->OFF:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    .line 847
    new-instance v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    const-string v5, "ON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->ON:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    .line 848
    new-instance v5, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    const-string v7, "DOZE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->DOZE:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    .line 849
    new-instance v7, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    const-string v9, "DOZE_SUSPEND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->DOZE_SUSPEND:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    .line 844
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

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

    .line 853
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 854
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->value:I

    .line 855
    return-void
.end method

.method public static getStatefromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;
    .registers 6
    .param p0, "value"    # I

    .line 862
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->values()[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 863
    .local v3, "state":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;
    iget v4, v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->value:I

    if-ne v4, p0, :cond_f

    .line 864
    return-object v3

    .line 862
    .end local v3    # "state":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 867
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 844
    const-class v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;
    .registers 1

    .line 844
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .registers 2

    .line 858
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
