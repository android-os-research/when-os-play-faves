.class public final synthetic Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->$r8$lambda$DZ4TvRclgDlx5NA5696YCl6WllQ(Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;Landroid/content/Intent;)V

    return-void
.end method
