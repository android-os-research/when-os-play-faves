.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

.field public mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mContext:Landroid/content/Context;

    .line 487
    new-instance v0, Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-direct {v0, p1}, Lcom/samsung/ucm/ucmservice/PolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 p1, 0x0

    .line 488
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 1

    .line 492
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getPolicyManager()Lcom/samsung/ucm/ucmservice/PolicyManager;
    .registers 1

    .line 496
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    return-object p0
.end method

.method public getUcmServiceAgentManager()Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    if-nez v0, :cond_d

    .line 501
    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    .line 503
    :cond_d
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    return-object p0
.end method

.method public getUcmSignHelperFactory()Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;
    .registers 1

    .line 507
    invoke-static {}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;->getInstance()Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;

    move-result-object p0

    return-object p0
.end method
