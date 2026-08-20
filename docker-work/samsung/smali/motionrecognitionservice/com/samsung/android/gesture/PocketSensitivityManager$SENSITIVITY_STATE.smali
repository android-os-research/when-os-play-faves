.class public final enum Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;
.super Ljava/lang/Enum;
.source "PocketSensitivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketSensitivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SENSITIVITY_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

.field public static final enum DISABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

.field public static final enum ENABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

.field public static final enum END:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

.field public static final enum UNKNOWN:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 46
    new-instance v0, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->UNKNOWN:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    new-instance v1, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->ENABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    new-instance v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->DISABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    new-instance v5, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    const-string v7, "END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->END:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    .line 45
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->$VALUES:[Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;
    .registers 1

    .line 45
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->$VALUES:[Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    invoke-virtual {v0}, [Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    return-object v0
.end method
