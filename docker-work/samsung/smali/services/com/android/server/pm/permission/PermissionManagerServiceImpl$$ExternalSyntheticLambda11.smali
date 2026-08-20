.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:Lcom/android/server/pm/permission/Permission;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/pm/permission/Permission;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/pm/permission/Permission;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->$r8$lambda$zk8aEC0rYgsHH8C0xI1d_p575aY(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
