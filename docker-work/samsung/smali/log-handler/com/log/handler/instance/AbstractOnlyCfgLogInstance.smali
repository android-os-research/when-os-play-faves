.class public Lcom/log/handler/instance/AbstractOnlyCfgLogInstance;
.super Lcom/log/handler/instance/AbstractLogInstance;
.source "AbstractOnlyCfgLogInstance.java"


# instance fields
.field protected mSettingsType:Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;


# direct methods
.method public constructor <init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;)V
    .registers 4
    .param p1, "logConnection"    # Lcom/log/handler/connection/ILogConnection;
    .param p2, "settingsType"    # Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/log/handler/instance/AbstractLogInstance;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    .line 21
    iput-object p2, p0, Lcom/log/handler/instance/AbstractOnlyCfgLogInstance;->mSettingsType:Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    .line 22
    return-void
.end method


# virtual methods
.method public getLogStatusSystemProperty()Ljava/lang/String;
    .registers 2

    .line 27
    const-string v0, ""

    return-object v0
.end method

.method public getSettingsType()Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/log/handler/instance/AbstractOnlyCfgLogInstance;->mSettingsType:Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;

    return-object v0
.end method
