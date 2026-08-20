.class public final enum Lcom/log/handler/LogHandlerUtils$ModemLogStatus;
.super Ljava/lang/Enum;
.source "LogHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/LogHandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModemLogStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/log/handler/LogHandlerUtils$ModemLogStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

.field public static final enum COPYING:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

.field public static final enum PAUSE:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

.field public static final enum POLLING:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

.field public static final enum RUNNING:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 289
    new-instance v0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    const-string v1, "PAUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->PAUSE:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    new-instance v1, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->RUNNING:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    new-instance v3, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    const-string v5, "POLLING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->POLLING:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    new-instance v5, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    const-string v7, "COPYING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->COPYING:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    .line 288
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->$VALUES:[Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

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

    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 293
    iput p3, p0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->mId:I

    .line 294
    return-void
.end method

.method public static getModemLogStatusById(I)Lcom/log/handler/LogHandlerUtils$ModemLogStatus;
    .registers 2
    .param p0, "id"    # I

    .line 302
    packed-switch p0, :pswitch_data_12

    .line 312
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->PAUSE:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    return-object v0

    .line 310
    :pswitch_6
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->COPYING:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    return-object v0

    .line 308
    :pswitch_9
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->POLLING:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    return-object v0

    .line 306
    :pswitch_c
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->RUNNING:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    return-object v0

    .line 304
    :pswitch_f
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->PAUSE:Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$ModemLogStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 288
    const-class v0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    return-object v0
.end method

.method public static values()[Lcom/log/handler/LogHandlerUtils$ModemLogStatus;
    .registers 1

    .line 288
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->$VALUES:[Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    invoke-virtual {v0}, [Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 317
    iget v0, p0, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->mId:I

    return v0
.end method
