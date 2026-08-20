.class public Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onNfcRestrictionPolicyChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

.field public final synthetic val$allowed:Z


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Z)V
    .registers 3

    .line 1241
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iput-boolean p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->val$allowed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1244
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v0

    .line 1246
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->val$allowed:Z

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mgetCoverSwitchState(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3b

    if-nez v0, :cond_34

    .line 1248
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_34

    .line 1249
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1250
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fputmAuthType(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1251
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_31

    .line 1252
    invoke-static {v0, v3, v3, v4, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$msetCoverVerified(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_34

    .line 1254
    :cond_31
    invoke-static {v0, v3, v4, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$msetFriendsVerified(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 1256
    :cond_34
    :goto_34
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mstartAuthentication(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    :cond_3b
    return-void
.end method
