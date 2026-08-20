.class public Lcom/log/handler/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# static fields
.field private static sBTHostLog:Lcom/log/handler/instance/BTHostLog;

.field private static sConnsysFWLog:Lcom/log/handler/instance/ConnsysFWLog;

.field private static sGPSHostLog:Lcom/log/handler/instance/GPSHostLog;

.field private static sMobileLog:Lcom/log/handler/instance/MobileLog;

.field private static sModemLog:Lcom/log/handler/instance/ModemLog;

.field private static sNetworkLog:Lcom/log/handler/instance/NetworkLog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 59
    new-instance v0, Lcom/log/handler/instance/MobileLog;

    new-instance v1, Lcom/log/handler/connection/LogSocketConnection;

    const-string v2, "mobilelogd"

    invoke-direct {v1, v2}, Lcom/log/handler/connection/LogSocketConnection;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/log/handler/LogHandlerUtils$LogType;->MOBILE_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-direct {v0, v1, v2}, Lcom/log/handler/instance/MobileLog;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    sput-object v0, Lcom/log/handler/LogFactory;->sMobileLog:Lcom/log/handler/instance/MobileLog;

    .line 69
    new-instance v0, Lcom/log/handler/instance/ModemLog;

    new-instance v1, Lcom/log/handler/connection/LogSocketConnection;

    const-string v2, "com.mediatek.mdlogger.socket1"

    invoke-direct {v1, v2}, Lcom/log/handler/connection/LogSocketConnection;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/log/handler/LogHandlerUtils$LogType;->MODEM_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-direct {v0, v1, v2}, Lcom/log/handler/instance/ModemLog;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    sput-object v0, Lcom/log/handler/LogFactory;->sModemLog:Lcom/log/handler/instance/ModemLog;

    .line 79
    new-instance v0, Lcom/log/handler/instance/NetworkLog;

    new-instance v1, Lcom/log/handler/connection/LogSocketConnection;

    const-string v2, "netdiag"

    invoke-direct {v1, v2}, Lcom/log/handler/connection/LogSocketConnection;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/log/handler/LogHandlerUtils$LogType;->NETWORK_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-direct {v0, v1, v2}, Lcom/log/handler/instance/NetworkLog;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    sput-object v0, Lcom/log/handler/LogFactory;->sNetworkLog:Lcom/log/handler/instance/NetworkLog;

    .line 89
    new-instance v0, Lcom/log/handler/instance/BTHostLog;

    new-instance v1, Lcom/log/handler/connection/LogSocketConnection;

    const-string v2, "bthostlogd"

    invoke-direct {v1, v2}, Lcom/log/handler/connection/LogSocketConnection;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/log/handler/LogHandlerUtils$LogType;->BTHOST_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-direct {v0, v1, v2}, Lcom/log/handler/instance/BTHostLog;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    sput-object v0, Lcom/log/handler/LogFactory;->sBTHostLog:Lcom/log/handler/instance/BTHostLog;

    .line 99
    new-instance v0, Lcom/log/handler/instance/ConnsysFWLog;

    new-instance v1, Lcom/log/handler/connection/LogSocketConnection;

    const-string v2, "connsysfwlogd"

    invoke-direct {v1, v2}, Lcom/log/handler/connection/LogSocketConnection;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/log/handler/LogHandlerUtils$LogType;->CONNSYSFW_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-direct {v0, v1, v2}, Lcom/log/handler/instance/ConnsysFWLog;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    sput-object v0, Lcom/log/handler/LogFactory;->sConnsysFWLog:Lcom/log/handler/instance/ConnsysFWLog;

    .line 109
    new-instance v0, Lcom/log/handler/instance/GPSHostLog;

    new-instance v1, Lcom/log/handler/connection/LbsHidlConnection;

    const-string v2, "mtk_mtklogger2mnld"

    invoke-direct {v1, v2}, Lcom/log/handler/connection/LbsHidlConnection;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/log/handler/LogHandlerUtils$LogType;->GPSHOST_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-direct {v0, v1, v2}, Lcom/log/handler/instance/GPSHostLog;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    sput-object v0, Lcom/log/handler/LogFactory;->sGPSHostLog:Lcom/log/handler/instance/GPSHostLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBTHostLogInstance()Lcom/log/handler/instance/BTHostLog;
    .registers 1

    .line 96
    sget-object v0, Lcom/log/handler/LogFactory;->sBTHostLog:Lcom/log/handler/instance/BTHostLog;

    return-object v0
.end method

.method public static getConnsysFWLogInstance()Lcom/log/handler/instance/ConnsysFWLog;
    .registers 1

    .line 106
    sget-object v0, Lcom/log/handler/LogFactory;->sConnsysFWLog:Lcom/log/handler/instance/ConnsysFWLog;

    return-object v0
.end method

.method public static getGPSHostLogInstance()Lcom/log/handler/instance/GPSHostLog;
    .registers 1

    .line 116
    sget-object v0, Lcom/log/handler/LogFactory;->sGPSHostLog:Lcom/log/handler/instance/GPSHostLog;

    return-object v0
.end method

.method public static getMobileLogInstance()Lcom/log/handler/instance/MobileLog;
    .registers 1

    .line 66
    sget-object v0, Lcom/log/handler/LogFactory;->sMobileLog:Lcom/log/handler/instance/MobileLog;

    return-object v0
.end method

.method public static getModemLogInstance()Lcom/log/handler/instance/ModemLog;
    .registers 1

    .line 76
    sget-object v0, Lcom/log/handler/LogFactory;->sModemLog:Lcom/log/handler/instance/ModemLog;

    return-object v0
.end method

.method public static getNetworkLogInstance()Lcom/log/handler/instance/NetworkLog;
    .registers 1

    .line 86
    sget-object v0, Lcom/log/handler/LogFactory;->sNetworkLog:Lcom/log/handler/instance/NetworkLog;

    return-object v0
.end method

.method public static getSettingsTypeInstance(Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;)Lcom/log/handler/instance/AbstractLogInstance;
    .registers 3
    .param p0, "settingsType"    # Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    .line 53
    sget-object v0, Lcom/log/handler/LogFactory$1;->$SwitchMap$com$log$handler$LogHandlerUtils$OnlyCfgLogType:[I

    invoke-virtual {p0}, Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTypeLogInstance(Lcom/log/handler/LogHandlerUtils$LogType;)Lcom/log/handler/instance/AbstractLogInstance;
    .registers 3
    .param p0, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;

    .line 28
    sget-object v0, Lcom/log/handler/LogFactory$1;->$SwitchMap$com$log$handler$LogHandlerUtils$LogType:[I

    invoke-virtual {p0}, Lcom/log/handler/LogHandlerUtils$LogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 40
    :pswitch_d
    invoke-static {}, Lcom/log/handler/LogFactory;->getBTHostLogInstance()Lcom/log/handler/instance/BTHostLog;

    move-result-object v0

    return-object v0

    .line 38
    :pswitch_12
    invoke-static {}, Lcom/log/handler/LogFactory;->getGPSHostLogInstance()Lcom/log/handler/instance/GPSHostLog;

    move-result-object v0

    return-object v0

    .line 36
    :pswitch_17
    invoke-static {}, Lcom/log/handler/LogFactory;->getConnsysFWLogInstance()Lcom/log/handler/instance/ConnsysFWLog;

    move-result-object v0

    return-object v0

    .line 34
    :pswitch_1c
    invoke-static {}, Lcom/log/handler/LogFactory;->getNetworkLogInstance()Lcom/log/handler/instance/NetworkLog;

    move-result-object v0

    return-object v0

    .line 32
    :pswitch_21
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    return-object v0

    .line 30
    :pswitch_26
    invoke-static {}, Lcom/log/handler/LogFactory;->getMobileLogInstance()Lcom/log/handler/instance/MobileLog;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_17
        :pswitch_12
        :pswitch_d
    .end packed-switch
.end method
