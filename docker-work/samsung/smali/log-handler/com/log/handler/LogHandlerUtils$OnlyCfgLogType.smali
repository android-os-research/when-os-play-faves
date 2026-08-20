.class public final enum Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;
.super Ljava/lang/Enum;
.source "LogHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/LogHandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnlyCfgLogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

.field public static final enum JNI_WIFI:Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

.field public static final MAX_ID:I = 0x1


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 75
    new-instance v0, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    const-string v1, "JNI_WIFI"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;->JNI_WIFI:Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    .line 74
    new-array v1, v3, [Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    aput-object v0, v1, v2

    sput-object v1, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;->$VALUES:[Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;->mId:I

    .line 81
    return-void
.end method

.method public static getAllLogTypes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 104
    .local v0, "logTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    const/4 v2, 0x1

    if-gt v1, v2, :cond_13

    .line 105
    invoke-static {v1}, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;->getOnlyCfgLogTypeById(I)Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 107
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method public static getOnlyCfgLogTypeById(I)Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;
    .registers 2
    .param p0, "setId"    # I

    .line 92
    packed-switch p0, :pswitch_data_a

    .line 96
    sget-object v0, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;->JNI_WIFI:Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    return-object v0

    .line 94
    :pswitch_6
    sget-object v0, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;->JNI_WIFI:Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    return-object v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 74
    const-class v0, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    return-object v0
.end method

.method public static values()[Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;
    .registers 1

    .line 74
    sget-object v0, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;->$VALUES:[Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    invoke-virtual {v0}, [Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    return-object v0
.end method


# virtual methods
.method public getOnlyCfgLogTypeId()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;->mId:I

    return v0
.end method
