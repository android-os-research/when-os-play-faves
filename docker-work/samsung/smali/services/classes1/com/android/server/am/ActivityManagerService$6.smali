.class public Lcom/android/server/am/ActivityManagerService$6;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field public final synthetic val$pid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 3984
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$6;->val$app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3988
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getBinderStatsServiceInternal()Lcom/android/server/BinderCallsStatsService$Internal;

    move-result-object v0

    .line 3989
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$6;->val$app:Lcom/android/server/am/ProcessRecord;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/BinderCallsStatsService$Internal;->reportProcessDied(IILjava/lang/String;)V

    return-void
.end method
