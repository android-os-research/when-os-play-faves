.class public final synthetic Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController$$ExternalSyntheticLambda0;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController$$ExternalSyntheticLambda0;->f$1:Ljava/io/PrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->$r8$lambda$ZcG3qKa5bIBc0XcwwooIKB_2tJY(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
