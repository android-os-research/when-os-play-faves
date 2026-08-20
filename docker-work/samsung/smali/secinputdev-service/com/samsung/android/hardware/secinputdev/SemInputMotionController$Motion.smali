.class final enum Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;
.super Ljava/lang/Enum;
.source "SemInputMotionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Motion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

.field public static final enum AIVF:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

.field public static final enum AWD:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

.field public static final enum EAR_DETECTION:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

.field public static final enum GRIP_FILTER:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

.field public static final enum PALM_MUTE:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

.field public static final enum PALM_SWIPE:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 251
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    const-string v1, "PALM_MUTE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->PALM_MUTE:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    .line 252
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    const-string v4, "PALM_SWIPE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->PALM_SWIPE:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    .line 253
    new-instance v4, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    const-string v6, "EAR_DETECTION"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->EAR_DETECTION:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    .line 254
    new-instance v6, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    const-string v8, "GRIP_FILTER"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->GRIP_FILTER:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    .line 255
    new-instance v8, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    const-string v10, "AIVF"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->AIVF:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    .line 256
    new-instance v10, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    const-string v12, "AWD"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->AWD:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    .line 250
    new-array v12, v13, [Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

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

    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 261
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->value:I

    .line 262
    return-void
.end method

.method public static getMotionfromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;
    .registers 6
    .param p0, "value"    # I

    .line 269
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->values()[Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 270
    .local v3, "motion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;
    iget v4, v3, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->value:I

    if-ne v4, p0, :cond_f

    .line 271
    return-object v3

    .line 269
    .end local v3    # "motion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 274
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 250
    const-class v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;
    .registers 1

    .line 250
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    return-object v0
.end method


# virtual methods
.method public disableByListener(Ljava/lang/String;)Z
    .registers 10
    .param p1, "client"    # Ljava/lang/String;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableByListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "logPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputMotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_77

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": not supported"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--: not supported, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 334
    return v3

    .line 337
    :cond_77
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 338
    .local v1, "inputMotion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->removeFromClients(Ljava/lang/String;)I

    move-result v4

    .line 339
    .local v4, "numOfClients":I
    const/4 v5, 0x0

    if-ltz v4, :cond_f2

    .line 340
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->LISTENER:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$smdisableRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z

    .line 341
    if-nez v4, :cond_b5

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": stop"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->stop()V

    goto :goto_d2

    .line 345
    :cond_b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": still enabled: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v1, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->printClients(Ljava/io/PrintWriter;)V

    .line 348
    :goto_d2
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "--: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 349
    const/4 v2, 0x1

    return v2

    .line 351
    :cond_f2
    const/4 v6, -0x1

    if-ne v4, v6, :cond_147

    .line 352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": not started (setting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isStart:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->getClientsSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--: not started, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    goto/16 :goto_1c1

    .line 354
    :cond_147
    const/4 v6, -0x2

    if-ne v4, v6, :cond_189

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": not contains "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--: no such client \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    goto :goto_1c1

    .line 358
    :cond_189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": failed to removeFromClients: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--: failed to removeFromClients: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 361
    :goto_1c1
    invoke-virtual {v1, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->printClients(Ljava/io/PrintWriter;)V

    .line 362
    return v3
.end method

.method public disableBySetting(Ljava/lang/String;)Z
    .registers 10
    .param p1, "client"    # Ljava/lang/String;

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableBySetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "logPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputMotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_77

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": not supported"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--: not supported, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 427
    return v3

    .line 430
    :cond_77
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 431
    .local v1, "inputMotion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->removeFromClients(Ljava/lang/String;)I

    move-result v4

    .line 432
    .local v4, "numOfClients":I
    const/4 v5, 0x0

    if-ltz v4, :cond_f2

    .line 433
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->SETTING:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$smdisableRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z

    .line 434
    if-nez v4, :cond_b5

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": stop"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->stop()V

    goto :goto_d2

    .line 438
    :cond_b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": still enabled: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {v1, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->printClients(Ljava/io/PrintWriter;)V

    .line 441
    :goto_d2
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "--: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 442
    const/4 v2, 0x1

    return v2

    .line 444
    :cond_f2
    const/4 v6, -0x1

    if-ne v4, v6, :cond_147

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": not started (setting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isStart:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->getClientsSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--: not started, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    goto/16 :goto_1c1

    .line 447
    :cond_147
    const/4 v6, -0x2

    if-ne v4, v6, :cond_189

    .line 448
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": not contains "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--: no such client \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    goto :goto_1c1

    .line 451
    :cond_189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": failed to removeFromClients: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--: failed to removeFromClients: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 454
    :goto_1c1
    invoke-virtual {v1, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->printClients(Ljava/io/PrintWriter;)V

    .line 455
    return v3
.end method

.method public enableByListener(Ljava/lang/String;)Z
    .registers 11
    .param p1, "client"    # Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableByListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "logPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputMotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "result":Z
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_78

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": not supported"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "++: not supported, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 285
    return v4

    .line 288
    :cond_78
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 289
    .local v3, "inputMotion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->getInt()I

    move-result v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_95

    .line 290
    invoke-static {v3, v7}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fputsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;Z)V

    .line 292
    :cond_95
    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v5

    if-eqz v5, :cond_1a5

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v5

    if-eqz v5, :cond_1a5

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v5

    if-eqz v5, :cond_1a5

    .line 293
    invoke-virtual {v3, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->addToClients(Ljava/lang/String;)I

    move-result v5

    .line 294
    .local v5, "numOfClients":I
    const/4 v6, 0x0

    if-lez v5, :cond_15d

    .line 295
    if-ne v5, v7, :cond_e3

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": start"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->start()V

    .line 298
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetisScreenOn()Z

    move-result v4

    if-eqz v4, :cond_db

    .line 299
    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->restart()V

    goto :goto_100

    .line 301
    :cond_db
    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->pause()V

    goto :goto_100

    .line 304
    :cond_e3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": already started: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v3, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->printClients(Ljava/io/PrintWriter;)V

    .line 307
    :goto_100
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "++: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 308
    sget-object v4, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->LISTENER:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    invoke-static {v4}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$smenableRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z

    move-result v1

    .line 309
    if-nez v1, :cond_15b

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": failed to enable RawdataService but motion started"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "++: failed to enable RawdataService but motion started, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 312
    const/4 v1, 0x1

    .line 320
    .end local v5    # "numOfClients":I
    :cond_15b
    goto/16 :goto_1f5

    .line 315
    .restart local v5    # "numOfClients":I
    :cond_15d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": same client \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is already registered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "++: failed, same client \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v3, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->printClients(Ljava/io/PrintWriter;)V

    .line 318
    return v4

    .line 321
    .end local v5    # "numOfClients":I
    :cond_1a5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": not available (setting:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", available:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "++: not available, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 324
    :goto_1f5
    return v1
.end method

.method public enableBySetting(Ljava/lang/String;)Z
    .registers 11
    .param p1, "client"    # Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBySetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "logPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputMotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_77

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": not supported"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "++: not supported, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 373
    return v3

    .line 376
    :cond_77
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 378
    .local v1, "inputMotion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    const/4 v4, 0x0

    .line 379
    .local v4, "result":Z
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->isExistClient(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_d7

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": already started with same client \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "++: failed, already started same client \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->printClients(Ljava/io/PrintWriter;)V

    .line 383
    return v4

    .line 385
    :cond_d7
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v5

    if-eqz v5, :cond_1de

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v5

    if-eqz v5, :cond_1de

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v5

    if-eqz v5, :cond_1de

    .line 386
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->addToClients(Ljava/lang/String;)I

    move-result v5

    .line 387
    .local v5, "numOfClients":I
    if-lez v5, :cond_1a2

    .line 388
    const/4 v3, 0x1

    if-ne v5, v3, :cond_125

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": start"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->start()V

    .line 391
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetisScreenOn()Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 392
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->restart()V

    goto :goto_142

    .line 394
    :cond_11d
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->pause()V

    goto :goto_142

    .line 397
    :cond_125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ": already started: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v1, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->printClients(Ljava/io/PrintWriter;)V

    .line 400
    :goto_142
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "++: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 401
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->SETTING:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$smenableRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z

    move-result v3

    .line 402
    .end local v4    # "result":Z
    .local v3, "result":Z
    if-nez v3, :cond_19f

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": failed to enable RawdataService but motion started"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "++: failed to enable RawdataService but motion started, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 405
    const/4 v2, 0x1

    move v4, v2

    .end local v3    # "result":Z
    .local v2, "result":Z
    goto :goto_1a0

    .line 402
    .end local v2    # "result":Z
    .restart local v3    # "result":Z
    :cond_19f
    move v4, v3

    .line 413
    .end local v3    # "result":Z
    .end local v5    # "numOfClients":I
    .restart local v4    # "result":Z
    :goto_1a0
    goto/16 :goto_22e

    .line 408
    .restart local v5    # "numOfClients":I
    :cond_1a2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": failed to addToClients: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "++: failed to addToClients: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->printClients(Ljava/io/PrintWriter;)V

    .line 411
    return v3

    .line 414
    .end local v5    # "numOfClients":I
    :cond_1de
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": not available (setting:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", available:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "++: not available, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 417
    :goto_22e
    return v4
.end method

.method public getInt()I
    .registers 2

    .line 265
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->value:I

    return v0
.end method
