.class public Lcom/log/handler/instance/GPSHostLog;
.super Lcom/log/handler/instance/AbstractLogInstance;
.source "GPSHostLog.java"


# static fields
.field private static final SYSTEM_PROPERTY_LOG_STATUS:Ljava/lang/String; = "vendor.gpsdbglog.enable"


# direct methods
.method public constructor <init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V
    .registers 3
    .param p1, "logConnection"    # Lcom/log/handler/connection/ILogConnection;
    .param p2, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/log/handler/instance/AbstractLogInstance;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getLogStatusSystemProperty()Ljava/lang/String;
    .registers 2

    .line 26
    const-string v0, "vendor.gpsdbglog.enable"

    return-object v0
.end method
