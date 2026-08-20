.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$5:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$6:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$1:[I

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$5:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;->f$6:I

    move-object v7, p1

    check-cast v7, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->$r8$lambda$B2ktNJr5yCXYzfIvQJ6zFv3xeUs(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
