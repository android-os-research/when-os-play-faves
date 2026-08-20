.class public final enum Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;
.super Ljava/lang/Enum;
.source "PocketModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IRIS_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

.field public static final enum NOT_USE:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

.field public static final enum TURN_OFF:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

.field public static final enum TURN_ON:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 253
    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    const-string v1, "NOT_USE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->NOT_USE:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    new-instance v1, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    const-string v3, "TURN_ON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_ON:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    new-instance v3, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    const-string v5, "TURN_OFF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_OFF:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    .line 252
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->$VALUES:[Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 252
    const-class v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;
    .registers 1

    .line 252
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->$VALUES:[Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    invoke-virtual {v0}, [Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    return-object v0
.end method
