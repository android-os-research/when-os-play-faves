.class public final enum Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
.super Ljava/lang/Enum;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/CommonServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessagingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

.field public static final enum CONVERGED:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

.field public static final enum INTEGRATED:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

.field public static final enum NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

.field public static final enum SEAMLESS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 91
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    new-instance v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    const-string v3, "INTEGRATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->INTEGRATED:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    new-instance v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    const-string v5, "CONVERGED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->CONVERGED:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    new-instance v5, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    const-string v7, "SEAMLESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->SEAMLESS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    .line 90
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->mValueToEnum:Landroid/util/SparseArray;

    .line 95
    invoke-static {}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    move-result-object v0

    array-length v1, v0

    :goto_41
    if-ge v2, v1, :cond_51

    aget-object v3, v0, v2

    .line 96
    .local v3, "entry":Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    .end local v3    # "entry":Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 98
    :cond_51
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

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->mCode:I

    .line 101
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
    .registers 5
    .param p0, "value"    # I

    .line 106
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    .line 107
    .local v0, "entry":Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
    if-eqz v0, :cond_b

    .line 108
    return-object v0

    .line 110
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    .line 111
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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 90
    const-class v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
    .registers 1

    .line 90
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 115
    const-string v0, ""

    .line 116
    .local v0, "rs":Ljava/lang/String;
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MessagingMode:[I

    invoke-virtual {p0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    goto :goto_1a

    .line 127
    :pswitch_e
    const-string v0, "NONE"

    .line 128
    goto :goto_1a

    .line 124
    :pswitch_11
    const-string v0, "SEAMLESS"

    .line 125
    goto :goto_1a

    .line 121
    :pswitch_14
    const-string v0, "CONVERGED"

    .line 122
    goto :goto_1a

    .line 118
    :pswitch_17
    const-string v0, "INTEGRATED"

    .line 119
    nop

    .line 132
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
