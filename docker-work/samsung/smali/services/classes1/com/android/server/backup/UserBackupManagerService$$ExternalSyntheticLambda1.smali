.class public final synthetic Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/backup/transport/OnTransportRegisteredListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    return-void
.end method


# virtual methods
.method public final onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->$r8$lambda$nhDpousXIb-UWNtQnFwKddTYzHQ(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
