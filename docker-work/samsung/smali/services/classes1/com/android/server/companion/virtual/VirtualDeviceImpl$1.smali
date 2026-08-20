.class public Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;
.super Ljava/lang/Object;
.source "VirtualDeviceImpl.java"

# interfaces
.implements Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createListenerAdapter()Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayEmpty(I)V
    .registers 3

    .line 127
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onDisplayEmpty(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "VirtualDeviceImpl"

    const-string v0, "Unable to call mActivityListener"

    .line 129
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public onTopActivityChanged(ILandroid/content/ComponentName;)V
    .registers 3

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "VirtualDeviceImpl"

    const-string p2, "Unable to call mActivityListener"

    .line 120
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method
