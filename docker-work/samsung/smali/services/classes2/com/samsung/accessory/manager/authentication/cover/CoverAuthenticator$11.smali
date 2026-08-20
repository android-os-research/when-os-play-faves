.class public Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCertBlocklistChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 2

    .line 1264
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1267
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz v0, :cond_39

    .line 1268
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    .line 1269
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    .line 1270
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1271
    :cond_2e
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmCoverAuthHandler(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 1274
    :cond_39
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mstartAuthentication(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    :goto_41
    return-void
.end method
