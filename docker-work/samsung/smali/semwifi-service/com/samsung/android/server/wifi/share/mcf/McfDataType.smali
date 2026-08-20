.class public final enum Lcom/samsung/android/server/wifi/share/mcf/McfDataType;
.super Ljava/lang/Enum;
.source "McfDataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/share/mcf/McfDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

.field public static final enum PASSWORD:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

.field public static final enum QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 19
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    const-string v1, "QOS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 20
    new-instance v1, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    const-string v3, "PASSWORD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->PASSWORD:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 18
    sput-object v3, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->$VALUES:[Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfDataType;
    .registers 2

    .line 18
    const-class v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/share/mcf/McfDataType;
    .registers 1

    .line 18
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->$VALUES:[Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    return-object v0
.end method
