.class public Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.super Ljava/lang/Thread;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunningCheckable"
.end annotation


# instance fields
.field public running:Z

.field public final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    .line 553
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 554
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$RunningCheckable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public checkRunning()Z
    .registers 1

    .line 556
    iget-boolean p0, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    return p0
.end method
