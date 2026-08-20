.class public Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;
.super Landroid/os/AsyncTask;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResetKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .registers 2

    .line 1336
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x0

    .line 1338
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1342
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_16} :catch_50
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_16} :catch_32

    .line 1344
    :try_start_16
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/IKeyChainService;->reset()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_22} :catch_28
    .catchall {:try_start_16 .. :try_end_22} :catchall_26

    .line 1348
    :try_start_22
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_50
    .catch Ljava/lang/AssertionError; {:try_start_22 .. :try_end_25} :catch_32

    return-object v0

    :catchall_26
    move-exception v0

    goto :goto_2e

    .line 1346
    :catch_28
    :try_start_28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_26

    .line 1348
    :try_start_2a
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    return-object v0

    :goto_2e
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1349
    throw v0
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_32} :catch_50
    .catch Ljava/lang/AssertionError; {:try_start_2a .. :try_end_32} :catch_32

    .line 1353
    :catch_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ResetKeyChain - is KeyChainService running for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecurityPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 1351
    :catch_50
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1336
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
