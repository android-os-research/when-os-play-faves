.class public final synthetic Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/UserBackupManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->$r8$lambda$eZxJpEqIGBxYseUbln80Bl6F4I0(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
