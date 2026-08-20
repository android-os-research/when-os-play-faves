.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:Lcom/android/server/pm/permission/Permission;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/pm/permission/Permission;

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$3:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/pm/permission/Permission;

    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$2:I

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$3:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->$r8$lambda$YO_T-yOJ-mB-NGWYjtmCedUirFk(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
