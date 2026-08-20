.class public Lcom/android/server/enterprise/application/ApplicationPolicy$11;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic val$finalTargetId:I

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;I)V
    .registers 4

    .line 9462
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->val$finalTargetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 9465
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->val$finalTargetId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    const-string p0, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
