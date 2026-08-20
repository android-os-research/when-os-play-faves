.class public Lcom/android/server/am/ActivityManagerService$4;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 2279
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 5

    const/16 v0, 0x3f

    if-ne p1, v0, :cond_17

    if-eqz p3, :cond_17

    .line 2282
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_17

    .line 2284
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService;->runInBackgroundDisabled(I)V

    :cond_17
    return-void
.end method
