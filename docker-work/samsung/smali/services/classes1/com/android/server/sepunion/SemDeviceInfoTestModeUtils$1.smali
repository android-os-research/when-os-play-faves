.class public Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;
.super Landroid/os/Handler;
.source "SemDeviceInfoTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Looper;)V
    .registers 3

    .line 30
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 32
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-static {p0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->-$$Nest$fgetmCallback(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;->onDeviceInfoTestModeChanged()V

    return-void
.end method
