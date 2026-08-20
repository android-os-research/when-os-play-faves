.class synthetic Lcom/log/handler/LogFactory$1;
.super Ljava/lang/Object;
.source "LogFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/LogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$log$handler$LogHandlerUtils$LogType:[I

.field static final synthetic $SwitchMap$com$log$handler$LogHandlerUtils$OnlyCfgLogType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 53
    invoke-static {}, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;->values()[Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/log/handler/LogFactory$1;->$SwitchMap$com$log$handler$LogHandlerUtils$OnlyCfgLogType:[I

    .line 28
    invoke-static {}, Lcom/log/handler/LogHandlerUtils$LogType;->values()[Lcom/log/handler/LogHandlerUtils$LogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/log/handler/LogFactory$1;->$SwitchMap$com$log$handler$LogHandlerUtils$LogType:[I

    :try_start_12
    sget-object v1, Lcom/log/handler/LogHandlerUtils$LogType;->MOBILE_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-virtual {v1}, Lcom/log/handler/LogHandlerUtils$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v0

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/log/handler/LogFactory$1;->$SwitchMap$com$log$handler$LogHandlerUtils$LogType:[I

    sget-object v1, Lcom/log/handler/LogHandlerUtils$LogType;->MODEM_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-virtual {v1}, Lcom/log/handler/LogHandlerUtils$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move-exception v0

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/log/handler/LogFactory$1;->$SwitchMap$com$log$handler$LogHandlerUtils$LogType:[I

    sget-object v1, Lcom/log/handler/LogHandlerUtils$LogType;->NETWORK_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-virtual {v1}, Lcom/log/handler/LogHandlerUtils$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move-exception v0

    :goto_37
    :try_start_37
    sget-object v0, Lcom/log/handler/LogFactory$1;->$SwitchMap$com$log$handler$LogHandlerUtils$LogType:[I

    sget-object v1, Lcom/log/handler/LogHandlerUtils$LogType;->CONNSYSFW_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-virtual {v1}, Lcom/log/handler/LogHandlerUtils$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-exception v0

    :goto_44
    :try_start_44
    sget-object v0, Lcom/log/handler/LogFactory$1;->$SwitchMap$com$log$handler$LogHandlerUtils$LogType:[I

    sget-object v1, Lcom/log/handler/LogHandlerUtils$LogType;->GPSHOST_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-virtual {v1}, Lcom/log/handler/LogHandlerUtils$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v0

    :goto_51
    :try_start_51
    sget-object v0, Lcom/log/handler/LogFactory$1;->$SwitchMap$com$log$handler$LogHandlerUtils$LogType:[I

    sget-object v1, Lcom/log/handler/LogHandlerUtils$LogType;->BTHOST_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-virtual {v1}, Lcom/log/handler/LogHandlerUtils$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v0

    :goto_5e
    return-void
.end method
