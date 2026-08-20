.class public Lcom/android/server/sepunion/SemShortcutManagerService$3;
.super Ljava/lang/Thread;
.source "SemShortcutManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemShortcutManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .registers 2

    .line 541
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$3;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/16 v0, 0xa

    .line 544
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 546
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$3;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->-$$Nest$mupdateSemExecutableInfo(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    return-void
.end method
