.class public Lcom/android/server/am/ActivityManagerService$13;
.super Landroid/os/CountDownTimer;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;JJ)V
    .registers 6

    .line 6330
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "setMaxStartingBackgroundTimer onfinish"

    .line 6335
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6336
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->setMaxStartingBackground()V

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
