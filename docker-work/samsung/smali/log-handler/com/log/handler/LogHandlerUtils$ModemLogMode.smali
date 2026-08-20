.class public final enum Lcom/log/handler/LogHandlerUtils$ModemLogMode;
.super Ljava/lang/Enum;
.source "LogHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/LogHandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModemLogMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/log/handler/LogHandlerUtils$ModemLogMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum PLS_PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum PLS_SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum PLS_USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum SD_PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum SD_SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum SD_USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum USB_PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum USB_SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

.field public static final enum USB_USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;


# instance fields
.field private mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 232
    new-instance v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v1, "USB"

    const/4 v2, 0x0

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    new-instance v1, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v3, "SD"

    const/4 v4, 0x1

    const-string v5, "2"

    invoke-direct {v1, v3, v4, v5}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    new-instance v3, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v5, "PLS"

    const/4 v6, 0x2

    const-string v7, "3"

    invoke-direct {v3, v5, v6, v7}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    .line 233
    new-instance v5, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v7, "USB_USB"

    const/4 v8, 0x3

    const-string v9, "1_1"

    invoke-direct {v5, v7, v8, v9}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->USB_USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    new-instance v7, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v9, "USB_SD"

    const/4 v10, 0x4

    const-string v11, "1_2"

    invoke-direct {v7, v9, v10, v11}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->USB_SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    new-instance v9, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v11, "USB_PLS"

    const/4 v12, 0x5

    const-string v13, "1_3"

    invoke-direct {v9, v11, v12, v13}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->USB_PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    .line 234
    new-instance v11, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v13, "SD_USB"

    const/4 v14, 0x6

    const-string v15, "2_1"

    invoke-direct {v11, v13, v14, v15}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->SD_USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    new-instance v13, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v15, "SD_SD"

    const/4 v14, 0x7

    const-string v12, "2_2"

    invoke-direct {v13, v15, v14, v12}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->SD_SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    new-instance v12, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v15, "SD_PLS"

    const/16 v14, 0x8

    const-string v10, "2_3"

    invoke-direct {v12, v15, v14, v10}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->SD_PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    .line 235
    new-instance v10, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v15, "PLS_USB"

    const/16 v14, 0x9

    const-string v8, "3_1"

    invoke-direct {v10, v15, v14, v8}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->PLS_USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    new-instance v8, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v15, "PLS_SD"

    const/16 v14, 0xa

    const-string v6, "3_2"

    invoke-direct {v8, v15, v14, v6}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->PLS_SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    new-instance v6, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    const-string v15, "PLS_PLS"

    const/16 v14, 0xb

    const-string v4, "3_3"

    invoke-direct {v6, v15, v14, v4}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->PLS_PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    .line 231
    const/16 v4, 0xc

    new-array v4, v4, [Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    sput-object v4, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->$VALUES:[Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 239
    iput-object p3, p0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->mId:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public static getModemLogModeById(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$ModemLogMode;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_b2

    :cond_7
    goto/16 :goto_87

    :sswitch_9
    const-string v0, "3_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_88

    :sswitch_15
    const-string v0, "3_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_88

    :sswitch_21
    const-string v0, "3_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_88

    :sswitch_2c
    const-string v0, "2_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_88

    :sswitch_36
    const-string v0, "2_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_88

    :sswitch_40
    const-string v0, "2_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_88

    :sswitch_4a
    const-string v0, "1_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_88

    :sswitch_54
    const-string v0, "1_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_88

    :sswitch_5e
    const-string v0, "1_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_88

    :sswitch_68
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_88

    :sswitch_73
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_88

    :sswitch_7d
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_88

    :goto_87
    const/4 v0, -0x1

    :goto_88
    packed-switch v0, :pswitch_data_e4

    .line 274
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 272
    :pswitch_8e
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->PLS_PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 270
    :pswitch_91
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->PLS_SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 268
    :pswitch_94
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->PLS_USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 266
    :pswitch_97
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 264
    :pswitch_9a
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->SD_PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 262
    :pswitch_9d
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->SD_SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 260
    :pswitch_a0
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->SD_USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 258
    :pswitch_a3
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 256
    :pswitch_a6
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->USB_PLS:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 254
    :pswitch_a9
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->USB_SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 252
    :pswitch_ac
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->USB_USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    .line 250
    :pswitch_af
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->USB:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0

    :sswitch_data_b2
    .sparse-switch
        0x31 -> :sswitch_7d
        0x32 -> :sswitch_73
        0x33 -> :sswitch_68
        0xc3a3 -> :sswitch_5e
        0xc3a4 -> :sswitch_54
        0xc3a5 -> :sswitch_4a
        0xc764 -> :sswitch_40
        0xc765 -> :sswitch_36
        0xc766 -> :sswitch_2c
        0xcb25 -> :sswitch_21
        0xcb26 -> :sswitch_15
        0xcb27 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$ModemLogMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 231
    const-class v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0
.end method

.method public static values()[Lcom/log/handler/LogHandlerUtils$ModemLogMode;
    .registers 1

    .line 231
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->$VALUES:[Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    invoke-virtual {v0}, [Lcom/log/handler/LogHandlerUtils$ModemLogMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->mId:Ljava/lang/String;

    return-object v0
.end method
