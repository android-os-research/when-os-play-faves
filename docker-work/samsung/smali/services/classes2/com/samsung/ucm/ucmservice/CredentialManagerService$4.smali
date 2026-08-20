.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
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

    .line 424
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 431
    invoke-static {p2}, Lcom/skms/android/agent/CcmInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/skms/android/agent/CcmInterface;

    move-result-object p0

    const-string p1, "UcmService"

    if-eqz p0, :cond_56

    .line 432
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->isAppletDeletionLccmScriptExist()Z

    move-result p2

    if-eqz p2, :cond_56

    .line 433
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getAppletDeletionLccmScript()[B

    move-result-object p2

    if-eqz p2, :cond_5b

    const/4 v0, -0x1

    .line 437
    :try_start_15
    array-length v1, p2

    invoke-interface {p0, p2, v1}, Lcom/skms/android/agent/CcmInterface;->handleCcm([BI)I

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_37

    :catch_1b
    move-exception p0

    .line 439
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCcm: Exception "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_37
    if-nez v0, :cond_41

    const-string p0, "handleCcmRet: clearAppletInfo"

    .line 443
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->clearAppletInfo()V

    .line 446
    :cond_41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleCcmRet: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :cond_56
    const-string p0, "ccmInterface = null"

    .line 449
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    :goto_5b
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
