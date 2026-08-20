.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService$9;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;->displayToastFromAgentResponse(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$toastMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 3982
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$9;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$9;->val$toastMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 3985
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$9;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$9;->val$toastMsg:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
