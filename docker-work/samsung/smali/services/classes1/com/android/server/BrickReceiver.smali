.class public Lcom/android/server/BrickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrickReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p0, "BrickReceiver"

    const-string p1, "!!! BRICKING DEVICE !!!"

    .line 28
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "brick"

    .line 29
    invoke-static {p0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    return-void
.end method
