.class public final enum Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
.super Ljava/lang/Enum;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/CommonServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MinimumBatteryLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum PERCENT_10:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum PERCENT_20:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum PERCENT_5:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 39
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    new-instance v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v3, "PERCENT_5"

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_5:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    new-instance v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v5, "PERCENT_10"

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-direct {v3, v5, v6, v7}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_10:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    new-instance v5, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v7, "PERCENT_20"

    const/4 v8, 0x3

    const/16 v9, 0x14

    invoke-direct {v5, v7, v8, v9}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_20:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 38
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mValueToEnum:Landroid/util/SparseArray;

    .line 43
    invoke-static {}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    move-result-object v0

    array-length v1, v0

    :goto_46
    if-ge v2, v1, :cond_56

    aget-object v3, v0, v2

    .line 44
    .local v3, "entry":Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    .end local v3    # "entry":Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 46
    :cond_56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mCode:I

    .line 49
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .registers 5
    .param p0, "value"    # I

    .line 60
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 61
    .local v0, "entry":Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    if-eqz v0, :cond_b

    .line 62
    return-object v0

    .line 64
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 65
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .registers 1

    .line 38
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 70
    const-string v0, ""

    .line 71
    .local v0, "rs":Ljava/lang/String;
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MinimumBatteryLevel:[I

    invoke-virtual {p0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    goto :goto_1a

    .line 82
    :pswitch_e
    const-string v0, "PERCENT_20"

    goto :goto_1a

    .line 79
    :pswitch_11
    const-string v0, "PERCENT_10"

    .line 80
    goto :goto_1a

    .line 76
    :pswitch_14
    const-string v0, "PERCENT_5"

    .line 77
    goto :goto_1a

    .line 73
    :pswitch_17
    const-string v0, "NONE"

    .line 74
    nop

    .line 86
    :goto_1a
    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method
