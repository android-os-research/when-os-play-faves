.class public Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpToChange"
.end annotation


# instance fields
.field public final code:I

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$1:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V
    .registers 5

    .line 1144
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->this$1:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    iput p2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    .line 1146
    iput-object p3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    .line 1147
    iput p4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    return-void
.end method
