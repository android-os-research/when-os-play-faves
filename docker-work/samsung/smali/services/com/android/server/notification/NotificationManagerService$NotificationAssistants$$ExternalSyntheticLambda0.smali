.class public final synthetic Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field public final synthetic f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->$r8$lambda$kwTqvPHoM6SXKSUUHhJA5bwSETw(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method
