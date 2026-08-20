.class public Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;
.super Landroid/os/Handler;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RollbackRefreshHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/os/Looper;)V
    .registers 3

    .line 964
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 965
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 970
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    goto :goto_34

    .line 990
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmRollbackRefresh(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->removeUserIdFromPendingList(I)Z

    goto :goto_34

    .line 982
    :cond_1d
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmRollbackRefresh(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->initPendingActionList()V

    goto :goto_34

    .line 974
    :cond_27
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmRollbackRefresh(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->execute(II)V

    :goto_34
    return-void
.end method
