.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 310
    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$sfgetDBG()Z

    move-result p1

    const-string v0, "UcmService"

    if-eqz p1, :cond_21

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_21
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fgetmIsFbeEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result p1

    if-nez p1, :cond_71

    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUCMODEEnabledWithPropFile()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 313
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mshowODEProgressNotification(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    .line 314
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 316
    :try_start_3a
    iget p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_7e

    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    if-eqz p1, :cond_7e

    const/4 p1, 0x0

    .line 317
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    const-string p1, "checkUcmOdeDefaultLanguage. remove default language"

    .line 318
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result p0

    if-nez p0, :cond_7e

    const-string p0, "checkUcmOdeDefaultLanguage. failed to save ode prop"

    .line 321
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_56} :catch_57

    goto :goto_7e

    :catch_57
    move-exception p0

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 327
    :cond_71
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fgetmIsVoldCompleteNotified(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 328
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mshowODEProgressNotification(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    :cond_7e
    :goto_7e
    return-void
.end method
