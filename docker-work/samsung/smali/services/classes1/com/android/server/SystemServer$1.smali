.class public Lcom/android/server/SystemServer$1;
.super Ljava/util/TimerTask;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/SystemServer;

.field public final synthetic val$myTid:I


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;I)V
    .registers 3

    .line 1332
    iput-object p1, p0, Lcom/android/server/SystemServer$1;->this$0:Lcom/android/server/SystemServer;

    iput p2, p0, Lcom/android/server/SystemServer$1;->val$myTid:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1335
    iget p0, p0, Lcom/android/server/SystemServer$1;->val$myTid:I

    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void
.end method
