.class public Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;
.super Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestableAttentionCallbackInternal"
.end annotation


# instance fields
.field public mLastCallbackCode:I

.field public final synthetic this$1:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V
    .registers 2

    .line 918
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->this$1:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;

    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;-><init>()V

    const/4 p1, -0x1

    .line 919
    iput p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    return-void
.end method


# virtual methods
.method public getLastCallbackCode()I
    .registers 1

    .line 936
    iget p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    return p0
.end method

.method public onFailure(I)V
    .registers 2

    .line 928
    iput p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    return-void
.end method

.method public onSuccess(IJ)V
    .registers 4

    .line 923
    iput p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, -0x1

    .line 932
    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    return-void
.end method
