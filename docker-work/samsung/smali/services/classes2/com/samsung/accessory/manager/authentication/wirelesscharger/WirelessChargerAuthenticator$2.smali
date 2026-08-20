.class public Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;
.super Ljava/lang/Object;
.source "WirelessChargerAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 110
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$fputmRetryCounterWhenBusy(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;I)V

    .line 113
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$fgetmWirelessChargerAuthHandler(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 114
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$mstartAuthentication(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;ZJ)V

    :cond_27
    return-void
.end method
