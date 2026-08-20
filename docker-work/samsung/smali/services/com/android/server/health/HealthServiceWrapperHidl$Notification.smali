.class public Lcom/android/server/health/HealthServiceWrapperHidl$Notification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "HealthServiceWrapperHidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/health/HealthServiceWrapperHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Notification"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/health/HealthServiceWrapperHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl;Lcom/android/server/health/HealthServiceWrapperHidl$Notification-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V

    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    const-string p3, "android.hardware.health@2.0::IHealth"

    .line 302
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 303
    :cond_9
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    invoke-static {p1}, Lcom/android/server/health/HealthServiceWrapperHidl;->-$$Nest$fgetmInstanceName(Lcom/android/server/health/HealthServiceWrapperHidl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return-void

    .line 307
    :cond_16
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    invoke-static {p1}, Lcom/android/server/health/HealthServiceWrapperHidl;->-$$Nest$fgetmHandlerThread(Lcom/android/server/health/HealthServiceWrapperHidl;)Landroid/os/HandlerThread;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;

    invoke-direct {p2, p0}, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Notification;)V

    .line 309
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
