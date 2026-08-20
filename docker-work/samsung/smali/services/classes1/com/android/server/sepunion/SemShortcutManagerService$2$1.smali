.class public Lcom/android/server/sepunion/SemShortcutManagerService$2$1;
.super Ljava/lang/Thread;
.source "SemShortcutManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemShortcutManagerService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemShortcutManagerService$2;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService$2;)V
    .registers 2

    .line 508
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$2$1;->this$1:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/16 v0, 0xa

    .line 511
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 512
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$2$1;->this$1:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$2;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->-$$Nest$mupdateSemExecutableInfo(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    return-void
.end method
