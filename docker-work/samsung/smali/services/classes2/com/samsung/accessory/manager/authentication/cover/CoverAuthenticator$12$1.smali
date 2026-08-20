.class public Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

.field public final synthetic val$action:Ljava/lang/String;

.field public final synthetic val$requestPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1419
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$requestPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1422
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$action:Ljava/lang/String;

    const-string v1, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1423
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REPLY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 1424
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$requestPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1425
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$msendFactoryResult(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    goto :goto_60

    .line 1426
    :cond_2a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$action:Ljava/lang/String;

    const-string v1, "com.samsung.accessory.manager.action.START_AUTHENTICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1427
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.accessory.manager.action.AUTHENTICATION_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 1428
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$requestPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1429
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fputmRetryCounterFactoryTest(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1430
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    const-wide/16 v2, 0x0

    .line 1431
    invoke-static {p0, v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mstartAuthentication(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    :cond_60
    :goto_60
    return-void
.end method
