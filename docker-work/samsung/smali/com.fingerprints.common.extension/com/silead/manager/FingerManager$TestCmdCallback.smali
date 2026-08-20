.class public abstract Lcom/silead/manager/FingerManager$TestCmdCallback;
.super Ljava/lang/Object;
.source "FingerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/silead/manager/FingerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TestCmdCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTestResult(ILjava/lang/Object;)V
    .registers 3
    .param p1, "cmdId"    # I
    .param p2, "result"    # Ljava/lang/Object;

    .line 487
    return-void
.end method
