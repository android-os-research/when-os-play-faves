.class public final synthetic Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/permission/PermissionControllerManager;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda5;->f$0:Landroid/permission/PermissionControllerManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda5;->f$0:Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager;->updateUserSensitive()V

    return-void
.end method
