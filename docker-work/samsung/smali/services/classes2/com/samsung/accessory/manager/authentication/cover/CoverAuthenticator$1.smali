.class public Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

.field public final synthetic val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 3

    .line 225
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 228
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationStarting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mgetCoverSwitchState(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_23

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-boolean v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v1, :cond_23

    .line 230
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmAuthenticationTask(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_29

    .line 232
    :cond_23
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object p0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    :goto_29
    return-void
.end method
