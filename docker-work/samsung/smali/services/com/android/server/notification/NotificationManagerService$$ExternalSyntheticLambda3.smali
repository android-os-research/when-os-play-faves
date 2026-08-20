.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;ZLjava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iput-boolean p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$1:Z

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/notification/NotificationManagerService;->$r8$lambda$5k3SvJwVK8MO87_dQqVTQ9ZpBhQ(Lcom/android/server/notification/NotificationManagerService;ZLjava/lang/String;I)V

    return-void
.end method
