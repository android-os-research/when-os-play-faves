.class public final enum Lcom/samsung/android/game/Const$IntentType;
.super Ljava/lang/Enum;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/game/Const$IntentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/game/Const$IntentType;

.field public static final enum EVERY_HOUR_ALARM:Lcom/samsung/android/game/Const$IntentType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lcom/samsung/android/game/Const$IntentType;

    const-string v1, "EVERY_HOUR_ALARM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/Const$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/Const$IntentType;->EVERY_HOUR_ALARM:Lcom/samsung/android/game/Const$IntentType;

    .line 15
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/game/Const$IntentType;

    aput-object v0, v1, v2

    sput-object v1, Lcom/samsung/android/game/Const$IntentType;->$VALUES:[Lcom/samsung/android/game/Const$IntentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/game/Const$IntentType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/samsung/android/game/Const$IntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/Const$IntentType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/game/Const$IntentType;
    .registers 1

    .line 15
    sget-object v0, Lcom/samsung/android/game/Const$IntentType;->$VALUES:[Lcom/samsung/android/game/Const$IntentType;

    invoke-virtual {v0}, [Lcom/samsung/android/game/Const$IntentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/game/Const$IntentType;

    return-object v0
.end method
