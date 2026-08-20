.class final enum Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
.super Ljava/lang/Enum;
.source "BluetoothDeviceBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CHARGE_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;


# instance fields
.field private final index:I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 68
    new-instance v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    const-string v1, "CHARGE_STATE_DISCHARGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 69
    new-instance v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    const-string v3, "CHARGE_STATE_WIRED_CHARGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 70
    new-instance v3, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    const-string v5, "CHARGE_STATE_WIRELESS_CHARGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 67
    sput-object v5, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->$VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .registers 2

    .line 67
    const-class v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .registers 1

    .line 67
    sget-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->$VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    invoke-virtual {v0}, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object v0
.end method
