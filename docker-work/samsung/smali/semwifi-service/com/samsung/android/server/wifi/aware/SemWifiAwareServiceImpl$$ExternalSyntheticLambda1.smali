.class public final synthetic Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;

.field public final synthetic f$1:Landroid/os/HandlerThread;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;Landroid/os/HandlerThread;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda1;->f$1:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda1;->f$1:Landroid/os/HandlerThread;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->$r8$lambda$9p2yM8wWqhG47IlYfNmnXefQrIo(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;Landroid/os/HandlerThread;)V

    return-void
.end method
