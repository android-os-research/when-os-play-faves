.class public final synthetic Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/PermissionPolicyService;

    return-void
.end method


# virtual methods
.method public final onRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->$r8$lambda$Q9k9U27pAhp2mAT-DmNupRvkYwE(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    return-void
.end method
