.class public Lcom/android/server/am/ActivityManagerService$24;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;IZZIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$app:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 14814
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 14817
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$24;->val$app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mstartImsService(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    return-void
.end method
