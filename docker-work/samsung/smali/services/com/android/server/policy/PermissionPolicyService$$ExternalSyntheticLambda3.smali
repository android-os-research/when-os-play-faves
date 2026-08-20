.class public final synthetic Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->$r8$lambda$dasocVEhhMOxl_Co25Vo-yuaDf8(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
