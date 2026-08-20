.class public final enum Lcom/sec/vsim/ericssonnsds/NSDSEventType;
.super Ljava/lang/Enum;
.source "NSDSEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/vsim/ericssonnsds/NSDSEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum ENTITLEMENT_CHECK_COMPLETED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum LOC_AND_TC_UPDATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum LOC_AND_TC_WEBSHEET_COMPLETED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum LOC_AND_TC_WEBSHEET_LAUNCHED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum SIM_DEVICE_ACTIVATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum SIM_DEVICE_DEACTIVATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 7
    new-instance v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v1, "SIM_DEVICE_ACTIVATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->SIM_DEVICE_ACTIVATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 12
    new-instance v1, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v3, "SIM_DEVICE_DEACTIVATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->SIM_DEVICE_DEACTIVATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 17
    new-instance v3, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v5, "LOC_AND_TC_UPDATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->LOC_AND_TC_UPDATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 22
    new-instance v5, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v7, "ENTITLEMENT_CHECK_COMPLETED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->ENTITLEMENT_CHECK_COMPLETED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 27
    new-instance v7, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v9, "LOC_AND_TC_WEBSHEET_LAUNCHED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->LOC_AND_TC_WEBSHEET_LAUNCHED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 32
    new-instance v9, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v11, "LOC_AND_TC_WEBSHEET_COMPLETED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->LOC_AND_TC_WEBSHEET_COMPLETED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 3
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->$VALUES:[Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/vsim/ericssonnsds/NSDSEventType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    return-object v0
.end method

.method public static values()[Lcom/sec/vsim/ericssonnsds/NSDSEventType;
    .registers 1

    .line 3
    sget-object v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->$VALUES:[Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    invoke-virtual {v0}, [Lcom/sec/vsim/ericssonnsds/NSDSEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    return-object v0
.end method
