.class public Lcom/android/server/enterprise/device/DeviceInfo$1;
.super Landroid/os/Handler;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 141
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_7

    goto :goto_c

    .line 143
    :cond_7
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$mupdateSignalStrength(Lcom/android/server/enterprise/device/DeviceInfo;)V

    :goto_c
    return-void
.end method
