.class public Lcom/android/server/pm/UserManagerService$7;
.super Landroid/app/IStopUserCallback$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic val$sessionId:J


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;J)V
    .registers 4

    .line 5464
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    iput-wide p2, p0, Lcom/android/server/pm/UserManagerService$7;->val$sessionId:J

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .registers 5

    .line 5472
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-wide v1, p0, Lcom/android/server/pm/UserManagerService$7;->val$sessionId:J

    const/4 p0, 0x0

    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mlogUserRemoveJourneyFinish(Lcom/android/server/pm/UserManagerService;JIZ)V

    return-void
.end method

.method public userStopped(I)V
    .registers 5

    .line 5467
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mfinishRemoveUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 5468
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-wide v1, p0, Lcom/android/server/pm/UserManagerService$7;->val$sessionId:J

    const/4 p0, 0x1

    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mlogUserRemoveJourneyFinish(Lcom/android/server/pm/UserManagerService;JIZ)V

    return-void
.end method
