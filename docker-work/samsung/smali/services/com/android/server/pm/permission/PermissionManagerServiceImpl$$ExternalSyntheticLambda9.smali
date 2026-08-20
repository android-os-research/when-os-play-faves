.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/pm/parsing/pkg/AndroidPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;->f$1:I

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;->f$2:I

    iput p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;->f$4:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;->f$1:I

    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;->f$2:I

    iget v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;->f$3:I

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;->f$4:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->$r8$lambda$U6dHZiKYL1sqwBzuluAdLwWnm8o(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
