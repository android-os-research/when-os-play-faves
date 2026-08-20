.class public Lcom/android/server/power/ShutdownDialog$StatePrepare$1;
.super Ljava/lang/Thread;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownDialog$StatePrepare;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/power/ShutdownDialog$StatePrepare;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog$StatePrepare;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;->this$1:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x1f4

    .line 391
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string v0, "ShutdownDialog"

    const-string v1, "InterruptedException"

    .line 393
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    const-string p0, "g_shutdown_suspend=suspend"

    .line 395
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method
