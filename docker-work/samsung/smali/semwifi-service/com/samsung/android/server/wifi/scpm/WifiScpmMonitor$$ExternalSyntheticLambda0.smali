.class public final synthetic Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    check-cast p2, Landroid/content/BroadcastReceiver;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->$r8$lambda$x296YFMhAUhyEZhYnAEYOP6-c3Y(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
